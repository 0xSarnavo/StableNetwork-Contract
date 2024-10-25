# Overview of Functions in the `Receiver` Contract

## **Constructor**

- **Function:** `constructor(address _router, address _usdcToken, address _staker)`
- **Purpose:** Initializes the contract with essential addresses and sets up initial permissions.
- **Parameters:**
  - `_router`: Address of the Chainlink CCIP router
  - `_usdcToken`: Address of the USDC token contract
  - `_staker`: Address of the Staker contract
- **Actions:**
  - Stores the provided addresses
  - Approves the Staker contract to spend USDC tokens on behalf of this contract

## **Sender Management Functions**

- **Function:** `setSenderForSourceChain(uint64 _sourceChainSelector, address _sender)`
  - **Purpose:** Associates a sender contract with a specific source chain.
  - **Access:** Only callable by the contract owner
  - **Parameters:**
    - `_sourceChainSelector`: Unique identifier for the source chain
    - `_sender`: Address of the sender contract on the source chain
  - **Emits:** `SenderSet` event

- **Function:** `deleteSenderForSourceChain(uint64 _sourceChainSelector)`
  - **Purpose:** Removes the association of a sender contract for a specific source chain.
  - **Access:** Only callable by the contract owner
  - **Parameters:**
    - `_sourceChainSelector`: Unique identifier for the source chain to remove the sender from
  - **Emits:** `SenderRemoved` event
  