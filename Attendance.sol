pragma solidity ^0.8.0;

contract Attend {

    uint public totalAttendance;
    mapping(address => bool) public hasAttended;

    function markAtendance() public {
        require(!hasAttended[msg.sender], "Already marked"); // Check if the sender has already voted

        totalAttendance++;
        hasAttended[msg.sender] = true;

        if (totalAttendance > 100) {
            revert("marking limit exceeded"); // Revert the transaction if the voting limit is exceeded
        }

        assert(totalAttendance <= 100); // Ensure that the total votes does not exceed the limit
    }
}
