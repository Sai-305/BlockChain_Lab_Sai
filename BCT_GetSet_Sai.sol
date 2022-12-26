// Name : Saikrishna Muralidaran
// UID : 2019120041
// BE EXTC
// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

contract MessageContract{
    string message="Hello World";
    function getMessage() public view returns(string memory){
        return message;
    }
    function setMessage(string memory newMessage) public{
        message=newMessage;
    }
}