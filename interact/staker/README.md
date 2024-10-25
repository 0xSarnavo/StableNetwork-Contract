# Overview of Functions in the `Staker` Contract

## **Constructor**

- **Function:** `constructor(address _usdcToken)`
  - **Purpose:** Initializes the contract with the USDC token address. It checks that the address is valid and retrieves the number of decimals for the token.

## **Staking Function**

- **Function:** `stake(address _beneficiary, uint256 _amount)`
  - **Purpose:** Allows users to stake USDC tokens. It transfers the specified amount from the sender to the contract and mints an equivalent amount of Staker tokens for the beneficiary.
  - **Checks:**
    - Ensures that the beneficiary address is not zero.
    - Ensures that the amount is greater than zero.

## **Redeeming Function**

- **Function:** `redeem()`
  - **Purpose:** Allows users to redeem their Staker tokens for USDC. It burns the user's Staker tokens and transfers an equivalent amount of USDC back to them.
  - **Checks:**
    - Ensures that the user has a non-zero balance of Staker tokens.