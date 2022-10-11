// Name: Saikrishna Muralidaran
// UID: 2019120041
// BE EXTC
// SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.0;
contract Sai_Lottery{

    address public manager;
    address payable[] public participants;

    constructor() {
        manager = msg.sender;
    }

    modifier onlyOwner(){
        require (manager == msg.sender, "Only the manager can access this function");
        _;
    }

    receive() external payable{
        require(msg.value == 1 ether);
        participants.push(payable(msg.sender));

    }

    function getbalance() public onlyOwner view returns(uint){
        return address(this).balance;
    }

// Continuation   
// Name: Saikrishna Muralidaran
// UID: 2019120041
// BE EXTC

    function random() public view returns(uint){
        return uint(keccak256(abi.encodePacked(block.timestamp, block.difficulty, participants.length)));

    }

    function selectWinner() public onlyOwner returns(address){
        require(participants.length >= 3);
        address payable winner;
        uint r = random();
        uint index = r % participants.length;
        winner = participants[index];
        winner.transfer(getbalance());
        participants = new address payable[](0);
        return winner;
    }
}
