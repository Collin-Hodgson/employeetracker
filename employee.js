var mysql = require("mysql");
var inquirer = require("inquirer");
var util = require("util");
var consoleTable = require("console.table");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "",
  database: "employee_db",
});

connection.connect(function (err) {
  if (err) throw err;
  runSearch();
});

function runSearch() {
  inquirer
    .prompt({
      name: "choice",
      type: "list",
      message: "What would you like to do?",
      choices: [
        "View all employees",
        "View all employees by department",
        "View all employees by manager",
        "Add employee",
        "Remove employee",
        "Update employee role",
        "Update employee manager status",
        "Exit",
      ],
    })
    .then(function (answer) {
      switch (answer.action) {
        case "View all employees":
          employeeSearch();
          break;

        case "View all employees by department":
          departmentSearch();
          break;

        case "View all employees by manager":
          managerSearch();
          break;

        case "Add employee":
          addEmployee();
          break;

        case "Remove employee":
          removeEmployee();
          break;

        case "Update employee role":
          updateRole();
          break;

        case "Update employee manager status":
          updateManager();
          break;

        case "Exit":
          console.log("Connection Ended");
          conn.end();
          break;
      }
    });
}

function employeeSearch() {
  let query =
    "SELECT e.id , e.first_name, e.last_name, r.title,  d.name as department, r.salary, CONCAT(m.first_name,' ',m.last_name) as manager FROM employee e ";
  query += "LEFT JOIN role r ON e.role_id = r.id";
  query += "LEFT JOIN department d ON r.department_id = d.id";
  query += "LEFT JOIN employee m ON m.id = e.manager_id";

  conn.query(query, function (err, res) {
    if (err) throw err;
    console.log("/n");
    console.log("All Employees");
    console.log("-------------");
    console.log("/n");
    console.table(res);

    startProgram();
  });
}
