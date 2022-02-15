pragma solidity >0.8.0 <0.9.0;

contract FreeWallet {
    address payable public owner;

    constructor() {             //?
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function withdraw(uint _amount) external {
        require(msg.sender == owner, "caller is not owner");  //only the authorized owner can withdraw
        payable(msg.sender).transfer(_amount);
    }

    function getBalance() external view returns (uint) {
        return address(this).balance;
    }
}
