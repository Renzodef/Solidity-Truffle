# Solidity Truffle

This repository contains simple smart contract projects made with Solidity programming language and the Truffle framework.

## Prerequisites

To use this codebase, you'll need the following installed on your system:

- [Node.js](https://nodejs.org/en/)
- [Ganache](https://trufflesuite.com/ganache/)

## Installation

1. Clone this repository: `git clone https://github.com/Renzodef/Solidity-Truffle`
2. Install the dependencies with: `npm install`

## Project01 
### A simple smart contract that prints "Hello World" in the terminal with Solidity

- Start Ganache test chain by opening the downloaded application
- Open a terminal or command prompt.
- Navigate to the root directory of this project.
- Go with the terminal in the directory of the first project:<br>
```bash
cd Project01
```
- Compile the smart contract with:<br>
```bash
npx truffle compile
```
- Deploy the smart contract on the Ganache chain with:<br>
```bash
npx truffle migrate
```  
- Open the truffle console with:<br>
```bash
npx truffle console
```
- Invoke the smart contract with:<br>
```
HelloWorld.deployed().then(function(instance){return instance.getHelloMessage()});
```

## Project02
### A simple smart contract used to demonstrate data types available in Solidity

- Start Ganache test chain by opening the downloaded application
- Open a terminal or command prompt.
- Navigate to the root directory of this project.
- Go with the terminal in the directory of the first project:<br>
```bash
cd Project02
```
- Compile the smart contract with:<br>
```bash
npx truffle compile
```
- Deploy the smart contract on the Ganache chain with:<br>
```bash
npx truffle migrate
```  
- Open the truffle console with:<br>
```bash
npx truffle console
```
- Invoke the smart contract with:<br>
```
DataTypes.deployed().then(function(instance){return instance.getStateVariables()});
```

## Project03
### A smart contract used to demonstrate how to fund the smart contract address and how to distribute ethers from it to multiple wallets

- Start Ganache test chain by opening the downloaded application
- Open a terminal or command prompt.
- Navigate to the root directory of this project.
- Go with the terminal in the directory of the first project:<br>
```bash
cd Project03
```
- Compile the smart contract with:<br>
```bash
npx truffle compile
```
- Deploy the smart contract on the Ganache chain with:<br>
```bash
npx truffle migrate
```  
- Open the truffle console with:<br>
```bash
npx truffle console
```
- Create an instance of the contract:<br>
```
let instance = await DistributeMoney.deployed();
```
- Fund the smart contract address from the owner address with 10 ether:<br>
```
instance.send(web3.utils.toWei("10", "ether"));
```
- Setup a wallet and the value it will receive from the smart contract address:<br>
```
instance.setup(accounts[1],web3.utils.toWei('3',"ether"));
```
- Setup another wallet and the value it will receive:<br>
```
instance.setup(accounts[2],web3.utils.toWei('2',"ether"));
```
- Invoke the function that send the respective values from the smart contract address to the wallets set before:<br>
```
instance.sendMoney();
```
