pragma solidity ^0.8.11;

// SPDX-License-Identifier: MIT
 
// sending ether to someone
// testnet

// payable

// Orange function write on blockchain

contract ValentineSpeciali{
    function message() external view{
        uint x=10;
    }

    function paySomeone() external payable{

    } // set Value in Wei and it will send to the smart contract

    function checkBalanceofContract() external returns(uint){
        return address(this).balance;
    }

    function checkBalance(address check) external returns(uint){
        return check.balance;
    }

    function sendGift(address payable receiver) external payable{
        // receiver.transfer(1000);

        //error handling
        //assert
        //revert
        //require
        //if balance of address > 5000, then send 1000

        // if (receiver.balance > 5000) {
        //     receiver.transfer(1000);
        // }

        //logic
        //require(condition, error message)

        require(receiver.balance > 5000, "balance less than 5k");
    }

    
}
