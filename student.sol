// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentData {
    
    // Structure to store student details
    struct Student {
        uint256 id;
        string name;
        uint256 age;
        string course;
    }

    // Array to store the list of students
    Student[] public students;

    // Function to add a new student
    function addStudent(uint256 _id, string memory _name, uint256 _age, string memory _course) public {
        students.push(Student(_id, _name, _age, _course));
    }

    // Function to get student details by index
    function getStudent(uint256 index) public view returns (uint256, string memory, uint256, string memory) {
        require(index < students.length, "Student does not exist");
        Student memory student = students[index];
        return (student.id, student.name, student.age, student.course);
    }

    // Fallback function to handle unexpected calls or payments
    fallback() external payable {
        // Fallback can simply log the event or accept funds
    }

    // Function to check if the contract received any funds
    function checkBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
