# List of all functions in the `Receiver` contract that access parameters, along with their visibility (`public`, `external`, or `internal`):

### Functions and Their Parameters

1. **Constructor**
   - **Parameters:** 
     - `address _router`
     - `address _usdcToken`
     - `address _staker`
   - **Visibility:** No specific visibility modifier (constructor)

2. **setSenderForSourceChain**
   - **Parameters:**
     - `uint64 _sourceChainSelector`
     - `address _sender`
   - **Visibility:** `external` (only callable by the owner)

3. **deleteSenderForSourceChain**
   - **Parameters:**
     - `uint64 _sourceChainSelector`
   - **Visibility:** `external` (only callable by the owner)

4. **ccipReceive**
   - **Parameters:**
     - `Client.Any2EVMMessage calldata any2EvmMessage`
   - **Visibility:** `external` (override, callable only by the router)

5. **processMessage**
   - **Parameters:**
     - `Client.Any2EVMMessage calldata any2EvmMessage`
   - **Visibility:** `external` (only callable from within the contract)

6. **_ccipReceive**
   - **Parameters:**
     - `Client.Any2EVMMessage memory any2EvmMessage`
   - **Visibility:** `internal` (override)

7. **retryFailedMessage**
   - **Parameters:**
     - `bytes32 messageId`
     - `address beneficiary`
   - **Visibility:** `external` (only callable by the owner)

8. **getFailedMessages**
   - **Parameters:**
     - `uint256 offset`
     - `uint256 limit`
   - **Visibility:** `external` (read-only function)

### Summary of Function Access
- **Owner Functions:** The following functions can only be called by the contract owner:
  - `setSenderForSourceChain`
  - `deleteSenderForSourceChain`
  - `retryFailedMessage`

- **Router Function:** 
  - `ccipReceive` is specifically called by the CCIP router.

- **Internal and Public Functions:**
  - `processMessage` is callable only from within the contract.
  - `_ccipReceive` is internal and used for handling received messages.
  