# list of all functions in your `Sender` contract that access parameters, along with their visibility (either `public` or `onlyOwner`):

### Functions and Their Parameters

1. **Constructor**
   - **Parameters:** 
     - `address _router`
     - `address _link`
     - `address _usdcToken`
   - **Visibility:** No specific visibility modifier (constructor)

2. **setReceiverForDestinationChain**
   - **Parameters:**
     - `uint64 _destinationChainSelector`
     - `address _receiver`
   - **Visibility:** `onlyOwner`

3. **setGasLimitForDestinationChain**
   - **Parameters:**
     - `uint64 _destinationChainSelector`
     - `uint256 _gasLimit`
   - **Visibility:** `onlyOwner`

4. **deleteReceiverForDestinationChain**
   - **Parameters:**
     - `uint64 _destinationChainSelector`
   - **Visibility:** `onlyOwner`

5. **sendMessagePayLINK**
   - **Parameters:**
     - `uint64 _destinationChainSelector`
     - `address _beneficiary`
     - `uint256 _amount`
   - **Visibility:** `onlyOwner`
   - **Returns:** `bytes32 messageId`

6. **withdrawLinkToken**
   - **Parameters:**
     - `address _beneficiary`
   - **Visibility:** `onlyOwner`

7. **withdrawUsdcToken**
   - **Parameters:**
     - `address _beneficiary`
   - **Visibility:** `onlyOwner`

### Summary of Function Access
- **Only Owner Functions:** These functions can only be called by the contract owner:
  - `setReceiverForDestinationChain`
  - `setGasLimitForDestinationChain`
  - `deleteReceiverForDestinationChain`
  - `sendMessagePayLINK`
  - `withdrawLinkToken`
  - `withdrawUsdcToken`
