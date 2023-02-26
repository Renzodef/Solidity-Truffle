// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

/**
 * @title DistributeMoney
 * @notice A smart contract used to demonstrate how to fund the smart contract address and how to distribute ethers from it to multiple wallets
 *
 */

contract DistributeMoney {
    address owner;

    constructor() payable {
        owner = msg.sender;
    }

    // if used in a function it will be a required condition to run the function itself
    modifier oneOwner() {
        require(msg.sender == owner);
        _;
    }

    address[] wallets;

    mapping(address => uint256) inheritance;

    // fallback function that makes possible to fund the contract adress with ether
    receive() external payable {}

    // function that shows the address of the owner
    function getOwnerWallet() public view returns (address) {
        return owner;
    }

    // function that shows the balance of the owner address
    function getOwnerBalance() public view returns (uint256) {
        return owner.balance;
    }

    // function that shows the balance of the smart contract address
    function getSmartContractBalance() public view returns (uint256) {
        return address(this).balance;
    }

    // function that setup an address and the value it will receive from the smart contract address
    function setup(address _wallet, uint256 _inheritance) public oneOwner {
        wallets.push(_wallet);
        inheritance[_wallet] = _inheritance;
    }

    // function that shows the addresses initialized by the function "setup" above
    function getReceiverWallets()
        public
        view
        oneOwner
        returns (address[] memory)
    {
        return wallets;
    }

    // function that passes the ethers from the smart contract adress to the wallets set to receive money
    function sendMoney() public payable oneOwner {
        for (uint256 i = 0; i < wallets.length; i++) {
            payable(wallets[i]).transfer(inheritance[wallets[i]]);
        }
    }
}
