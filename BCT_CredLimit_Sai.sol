//Saikrishna Muralidaran UID: 2019120041
//BE EXTC
// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 <0.9.0;
	
	contract CreditLimit {
	    uint creditLimit;
	    
	
	    constructor() {
	        creditLimit = 10000;
	    }
	
	    function getCreditLimit() public view returns(uint){
	        return creditLimit;
	    }
	
	    function expenses(uint travel, uint food, uint stay) public {
	        require( creditLimit - travel - food - stay >= 0, "Cannot proceess this transaction");
	        creditLimit = creditLimit - travel - food - stay;
	    }
	
	    function resetCreditLimit() public {
	        creditLimit = 10000;
	    }
	}