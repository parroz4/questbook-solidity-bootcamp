pragma solidity ^0.8.11;

// SPDX-License-Identifier: MIT

contract MyThirdContract{

    mapping(uint => address) friends;
    mapping(address => uint) friends2;

    function test() external returns(address) {
        friends[1]=msg.sender;
        return friends[1];
        //return friends[msg.sender];
    }

    function test2() external returns(uint) {
        friends2[msg.sender]=1;
        return friends2[msg.sender];
    }

}
@parroz4
 
