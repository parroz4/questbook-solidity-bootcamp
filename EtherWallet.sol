// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract EtherWallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function depositMoneyOnContract() external payable{
    }

    function withdraw(uint _amount) external {
        require(msg.sender == owner, "caller is not owner");
        payable(msg.sender).transfer(_amount);
    }

    function getBalance() external view returns (uint) {
        return address(this).balance;
    }

    function getAddressBalance(address add01) external view returns (uint) {
        return add01.balance;
    }

    function paySomeone(address payable add,uint amount) external {
        require(msg.sender == owner, "only owner can pay");
        add.transfer(amount);
    }
}
