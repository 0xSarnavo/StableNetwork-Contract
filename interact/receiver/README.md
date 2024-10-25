# Overview of Functions in the `Receiver` Contract

## **Constructor**

- **Function:** `constructor(address _router, address _usdcToken, address _staker)`
- **Purpose:** Initializes the contract with specific addresses for the router, USDC token, and staker contract. It also approves the staker to spend USDC tokens on behalf of the contract.

## **Sender Management Functions**

- **Function:** `setSenderForSourceChain(uint64 _sourceChainSelector, address _sender)`
  - **Purpose:** Sets the sender contract for a specified source chain. Only callable by the owner.
- **Function:** `deleteSenderForSourceChain(uint64 _sourceChainSelector)`
  - **Purpose:** Deletes the sender contract for a specified source chain. Only callable by the owner.