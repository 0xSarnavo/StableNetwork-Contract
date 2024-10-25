# Overview of Functions in the `Sender` Contract

## **Constructor**

- **Function:** `constructor(address _router, address _link, address _usdcToken)`
- **Purpose:** Initializes the contract with addresses for the router, LINK token, and USDC token.

## **Set Receiver for Destination Chain**

- **Function:** `setReceiverForDestinationChain(uint64 _destinationChainSelector, address _receiver)`
- **Purpose:** Sets the receiver contract for a specified destination chain (only callable by the owner).

## **Set Gas Limit for Destination Chain**

- **Function:** `setGasLimitForDestinationChain(uint64 _destinationChainSelector, uint256 _gasLimit)`
- **Purpose:** Configures the gas limit for a specified destination chain (only callable by the owner).

## **Delete Receiver for Destination Chain**

- **Function:** `deleteReceiverForDestinationChain(uint64 _destinationChainSelector)`
- **Purpose:** Removes the receiver contract for a specified destination chain (only callable by the owner).

## **Send Message and Pay in LINK**

- **Function:** `sendMessagePayLINK(uint64 _destinationChainSelector, address _beneficiary, uint256 _amount)`
- **Purpose:** Sends data and transfers tokens to a receiver on the destination chain while paying fees in LINK.

## **Withdraw LINK Tokens**

- **Function:** `withdrawLinkToken(address _beneficiary)`
- **Purpose:** Allows the owner to withdraw all LINK tokens from the contract to a specified beneficiary.

## **Withdraw USDC Tokens**

- **Function:** `withdrawUsdcToken(address _beneficiary)`
- **Purpose:** Allows the owner to withdraw all USDC tokens from the contract to a specified beneficiary.
