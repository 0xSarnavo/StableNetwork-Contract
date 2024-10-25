# List of the `Staker` contract, which facilitates staking and redeeming USDC tokens using ERC20 tokens:

### Contract Overview

- **Name:** `Staker`
- **Inherits From:** `ERC20`
- **Implements:** `IStaker` interface

### Key Features

1. **Token Management:**
   - The contract manages an ERC20 token (in this case, USDC) that users can stake and redeem.
   - It keeps track of how many tokens each user has staked by minting its own `STK` tokens.

2. **Errors:**
   - Defines custom errors for various conditions, such as:
     - Invalid token address
     - Invalid beneficiary address
     - Invalid amount for staking or redeeming
     - Attempting to redeem when there are no tokens to redeem

3. **Events:**
   - Emits events for staking and redeeming, allowing tracking of actions within the contract:
     - `UsdcStaked`
     - `UsdcRedeemed`

### Functions

1. **Constructor:**
   - Takes the address of the USDC token as a parameter.
   - Checks if the address is valid and retrieves the number of decimals from the USDC token.

2. **stake:**
   - Allows users to stake a specified amount of USDC.
   - Checks if the beneficiary address and the amount are valid.
   - Transfers USDC from the sender to the contract and mints corresponding `STK` tokens for the beneficiary.
   - Emits the `UsdcStaked` event.

3. **redeem:**
   - Allows users to redeem their staked tokens for USDC.
   - Checks if the caller has a non-zero balance of `STK` tokens.
   - Burns the `STK` tokens and transfers the equivalent amount of USDC back to the user.
   - Emits the `UsdcRedeemed` event.

4. **decimals:**
   - Overrides the `decimals` function from the ERC20 contract to return the number of decimals from the USDC token.

### Summary

The `Staker` contract provides a simple mechanism for users to stake USDC tokens and receive `STK` tokens in return, which represent their stake. Users can later redeem their `STK` tokens for USDC. The contract includes safety checks to ensure valid operations and emits events for transparency and tracking. 
