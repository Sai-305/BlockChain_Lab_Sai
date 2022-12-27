// Name : Saikrishna Muralidaran
// UID : 2019120041
// BE EXTC
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Loop {
    function loop() public pure{
        // For loop

        for (uint i = 0; i < 10; i++)
        {
            if (i == 3)
            {
                // Skip to next iteration with continue
                continue;
            }
            if (i==5)
            {
                break;
            }
        }
            //While loop
            uint j;
            while (j<10){
                j++;
            }
    }
}