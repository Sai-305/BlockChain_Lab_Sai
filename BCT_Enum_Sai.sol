// Name : Saikrishna Muralidaran
// UID : 2019120041
// BE EXTC
// SPDX-License-Identifier: MIT
pragma solidity ^ 0.5.0; 
contract Types { 
enum Week { Mon, Tue, Wed, Thur, Fri, Sat, Sun } 
function getFirstEnum() public pure returns(Week) { 
return Week.Wed; 
} 
}