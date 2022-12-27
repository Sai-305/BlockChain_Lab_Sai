// Name : Saikrishna Muralidaran
// UID : 2019120041
// BE EXTC
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LoopingSystem{
    function looper(uint lim) public pure returns (uint){
        uint sum=0;
        for(uint i=1;i<=lim;i++){
            sum+=i;
        }
        return sum;
    }
}
Footer