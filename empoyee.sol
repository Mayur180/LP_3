// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EmployeeDetails {
    // Structure to store employee details
    struct Employee {
        uint256 id;
        string name;
        uint256 salary;
        string joiningDate;
    }

    // Array to store the list of employees
    Employee[] public employees;

    // Function to add a new employee
    function addEmployee(uint256 _id, string memory _name, uint256 _salary, string memory _joiningDate) public {
        Employee memory newEmployee = Employee({
            id: _id,
            name: _name,
            salary: _salary,
            joiningDate: _joiningDate
        });

        employees.push(newEmployee);
    }

    // Function to get the details of an employee by index
    function getEmployee(uint256 index) public view returns (uint256, string memory, uint256, string memory) {
        require(index < employees.length, "Employee does not exist");
        Employee memory employee = employees[index];
        return (employee.id, employee.name, employee.salary, employee.joiningDate);
    }
}
