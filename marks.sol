// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MarksArray {
    // Array to store the marks
    uint256[] public marks;

    // Function to accept marks and add them to the array
    function addMarks(uint256[] memory newMarks) public {
        for (uint256 i = 0; i < newMarks.length; i++) {
            marks.push(newMarks[i]);
        }
    }

    // Function to get the marks in the array
    function getMarks() public view returns (uint256[] memory) {
        return marks;
    }

    // Function to calculate the sum of all marks in the array
    function calculateSum() public view returns (uint256) {
        uint256 total = 0;
        for (uint256 i = 0; i < marks.length; i++) {
            total += marks[i];
        }
        return total;
    }
}
