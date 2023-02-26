// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

/**
 * @title DataTypes
 * @notice A simple smart contract used to demonstrate data types available in Solidity

 *
 */

contract DataTypes {
    uint256 x = 9; // uint stores a non negative integer (0 or more) by default of 256 bytes
    int256 i = -68; // int stores an integer
    uint8 j = 17; // uint8 stores an integer of 8 bytes
    bool isEthereumCool = true; // bool stores a boolean (true/false)
    address owner = msg.sender; // adress stores an Ethereum adress, while msg.sender is the Ethereum address of the account that owns the smart contract (asset) that is invoking this function
    bytes32 bMsg = "hello"; // bytes32 stores a byte variable of 32 bytes
    string sMsg = "hello"; // string stores a string

    function getStateVariables()
        public
        view
        returns (
            uint256,
            int256,
            uint256,
            bool,
            address,
            bytes32,
            string memory
        )
    {
        return (x, i, j, isEthereumCool, owner, bMsg, sMsg);
    }
}
