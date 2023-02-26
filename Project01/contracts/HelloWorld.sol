// SPDX-License-Identifier: UNLICENSED
/* 
Tells the Solidity compiler to compile only with version 0.8.0 or above
(just in the 0.8 range, 0.9.0 for example will not be accepted)
*/
pragma solidity ^0.8.0; // Tells the Solidity compiler to compile only with version 0.8.0 or above (just in the 0.8 range, 0.9.0 for example will not be accepted)

/**
 * @title HelloWorld
 * @notice A simple smart contract that prints "Hello World" in the terminal with Solidity
 *
 */

contract HelloWorld {
    string private helloMessage = "Hello World";

    // view means that the function only deals with local values and it doesn't touch the blockchain
    // the function return a string that comes from the local memory
    function getHelloMessage() public view returns (string memory) {
        return helloMessage;
    }
}
