// Name : Saikrishna Muralidaran
// UID : 2019120041
// BE EXTC
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Avg {
    uint [] balance=[565,19,27,28,400,5700,3900,854,4789,2,5,78,18,142];
    uint sum;
    function getSum() public {
        sum = 0;
        for(uint i = 0; i < balance.length; i++){
            sum = sum + balance[i];
        }
        
    }

    function getLength() public view returns (uint){
        return balance.length;
    }
    
    function getAvg() public view returns(uint){
        return sum/getLength();
    }
}
