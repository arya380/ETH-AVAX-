pragma solidity ^0.8.0;

contract salary {

    uint public totalsalaryrecived;
    mapping(address => bool) public hassalarygiven;

    function salarygiven() public {
        require(!hassalarygiven[msg.sender], "Already Given"); // Check if the sender has already voted

        totalsalaryrecived++;
        hassalarygiven[msg.sender] = true;

        if (totalsalaryrecived > 100) {
            revert("employee limit exceeded"); // Revert the transaction if the emloyee limit is exceeded
        }

        assert(totalsalaryrecived <= 100); // Ensure that the total employee does not exceed the limit
    }
}
