Download Node: brew install npm

Download Truffle: npm install -g truffle

Download Ganache for testing contracts on local blockchain: http://truffleframework.com/ganache/

Download MetaMask: https://metamask.io/

Steps to compile:
1. Open Terminal to home directory
2. Run: truffle compile

Steps to run tests:
1. Open Terminal to home directory
2. Run: truffle test

Precursors:
1. Make sure Ganache is running locally
2. Make sure MetaMask is on
3. Make sure MetaMask is connected to local Ganache server
	3a. New RPC URL: http://127.0.0.1:7545

Steps to run:
1. Open Terminal to home directory
2. Run: npm run dev

Steps to migrate new/updated contract:
1. Open Terminal to home directory
2. truffle migrate