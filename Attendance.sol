pragma solidity ^0.8.0;

contract salary {

    uint public totalsalaryrecived;
    mapping(address => bool) public hassalarygiven;

    function salarygiven() public {
        require(!hassalarygiven[msg.sender], "Already Given"); 

        totalsalaryrecived++;
        hassalarygiven[msg.sender] = true;

        if (totalsalaryrecived > 50) {
            revert("employee limit exceeded"); 
        }

        assert(totalsalaryrecived <= 50); 
    }
}
