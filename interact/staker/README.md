# Overview of Functions in the `Staker` Contract

## **Constructor**

- **Function:** `constructor(address _usdcToken)`
  - **Purpose:** Initializes the contract with the USDC token address.
  - **Checks:**
    - Ensures that the provided USDC token address is valid (not zero address).
  - **Actions:**
    - Stores the USDC token address.
    - Retrieves and stores the number of decimals for the USDC token.

## **Staking Function**

- **Function:** `stake(address _beneficiary, uint256 _amount)`
  - **Purpose:** Allows users to stake USDC tokens and receive Staker tokens in return.
  - **Checks:**
    - Ensures that the beneficiary address is not zero.
    - Ensures that the staking amount is greater than zero.
  - **Actions:**
    - Transfers the specified USDC amount from the sender to the contract.
    - Mints an equivalent amount of Staker tokens for the beneficiary.

## **Redeeming Function**

- **Function:** `redeem()`
  - **Purpose:** Allows users to redeem their Staker tokens for USDC.
  - **Checks:**
    - Ensures that the user has a non-zero balance of Staker tokens.
  - **Actions:**
    - Burns the user's entire balance of Staker tokens.
    - Transfers an equivalent amount of USDC back to the user.

## **Additional Notes**

- The contract assumes a 1:1 ratio between USDC and Staker tokens.
- Users should approve the Staker contract to spend their USDC before calling the `stake` function.
- The contract does not implement any staking rewards or time-lock mechanisms.
