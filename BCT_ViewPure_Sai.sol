// Name : Saikrishna Muralidaran
// UID : 2019120041
// BE EXTC
// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.0;

contract ViewPure{
    uint public x = 5;

    function View(uint y) public returns (uint){ 
        x=x+y; 
    }

    function Pure(uint i, uint j) public pure returns (uint) { 
        return i+j;
    }
}