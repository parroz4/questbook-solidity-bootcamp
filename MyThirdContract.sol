pragma solidity ^0.8.11;

// SPDX-License-Identifier: MIT

contract MyThirdContract{
    
    uint public varA = 10;
    //DMAS Division Multiplication Addition Substraction
    //step by step, final answer

    //memory locations
    //1. storage on blockchain (lot of gas)
    //2. memory just on the smart contract (sort of temporary variables/operations, kind of cache) (few gas)
    //3. stack local variables (default, just for the function not outside)
    //4. calldata

    // mapping(uint => address) friends;
    // mapping(address => uint) friends;
    // mapping(address => mapping (address => uint)) nested_map;
    // mapping(address => mapping (uint => uint)) nested_map;
    // mapping(address => uint[]) sessions;

    // uint[] address1;
    // uint[] address2;
    //quindi mapping al posto di usare 2 array, multiple variables of same types

    struct friend{
        string name;
        address myAddress;
        uint rating;
        bool isFriend;
    }


     function myMap() external returns(bool){
    // function myMap() external returns(string memory){

        // se boolean o int non devo mettere memory, ma con string si a causa delle gas fee?

        //varA=15;
        //return varA;

        // friends[1]=msg.sender;
        // friends[msg.sender]=1;
        // return friends[msg.sender];

        // nested_map[msg.sender][msg.sender]=10;
        // return nested_map[msg.sender][msg.sender];

        // nested_map[msg.sender][1]=10;
        // return nested_map[msg.sender][1];

        friend memory friend1 = friend("pikachu",msg.sender,10,true);
        friend memory friend2 = friend({isFriend: true, myAddress: msg.sender, name: "Charizard", rating: 8});

        friend1.rating=1;

        // sessions[msg.sender].push(50);
        // sessions[msg.sender].push(100);

        // delete sessions[msg.sender][1]; //default value

        // return sessions[msg.sender][1];

        // return friend2.rating;
        return friend1.isFriend;
        // return friend2.name;
        // return friend2.myAddress;
    }

}
