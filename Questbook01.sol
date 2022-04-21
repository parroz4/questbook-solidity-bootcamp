pragma solidity ^0.8.11;

// SPDX-License-Identifier: MIT

contract MyFirstContract{

    uint public num;

    // function get() public view returns (uint) {
    //     return num;
    // }

    // function set(uint _num) public {
    //     num = _num;
    // }

    // function ternary(uint _x) public pure returns (uint) {
    //     // if (_x < 10) {
    //     //     return 1;
    //     // }
    //     // return 2;

    //     // shorthand way to write if / else statement
    //     return _x < 10 ? 1 : 2;
    // }

    //mapping: mapping(keyType => valueType)

    mapping(address => uint) public myMap;

    function get(address _addr) public view returns (uint) {
        return myMap[_addr];
    }
    // First, go ahead and call get. It should be 0 which is the default value of a mapping.

    function set(address _addr, uint _i) public {
        myMap[_addr] = _i;
    }
    // Call set with some address and uint _i = 1. Call get with the same _addr, you should see the mapping value changed to 1.

    function remove(address _addr) public {
        delete myMap[_addr];
    }
    // Call remove then get. Check the output, you should see the mapping value changed to 0 after call to remove(addr).

}
