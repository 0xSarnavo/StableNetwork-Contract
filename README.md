# Cross-Chain Token Transfer using Chainlink's CCIP

This project consists of smart contracts deployed on Polygon and Avalanche networks to facilitate cross-chain token transfers. It includes the following components:

## Contracts

### 1. `sender.sol` (Polygon)
- **Router:** `0x9C32fCB86BF0f4a1A8921a9Fe46de3198bb884B2`
- **LINK Token:** `0x0Fd9e8d3aF1aaee056EB9e802c3A762a667b1904`
- **USDC Token:** `0x41e94eb019c0762f9bfcf9fb1e58725bfb0e7582`
- **Destination Chain Selector:** `14767482510784806043`
- **Contract Address:** `0x719e064319Df1cF9bC8AF9aEE11eB809D47aBa02`  
  [View on Polygonscan](https://amoy.polygonscan.com/address/0x719e064319Df1cF9bC8AF9aEE11eB809D47aBa02)

### 2. `receiver.sol` (Avalanche)
- **Router:** `0xF694E193200268f9a4868e4Aa017A0118C9a8177`
- **LINK Token:** `0x0b9d5D9136855f6FEc3c0993feE6E9CE8a297846`
- **USDC Token:** `0x5425890298aed601595a70ab815c96711a31bc65`
- **Sender Chain Selector:** `16281711391670634445`
- **Contract Address:** `0xe60cA94085Fa6c0d9D1deC5D0340aF79b6E8B94E`  
  [View on Snowscan](https://testnet.snowscan.xyz/address/0xe60cA94085Fa6c0d9D1deC5D0340aF79b6E8B94E)

### 3. `stake.sol` (Avalanche)
- **Contract Address:** `0xE259397b34D0549d8418A7A2E5DB4bAd8c874c0e`  
  [View on Snowscan](https://testnet.snowscan.xyz/address/0xE259397b34D0549d8418A7A2E5DB4bAd8c874c0e)

## Deployment Instructions

To deploy the contracts, follow these steps:

1. **Clean and Build the Project:**
   ```bash
   forge clean
   forge build
   ```

2. **Set Environment Variables:**
   Ensure you have a `.env` file with the following variables:
   ```plaintext
   POL=<Your Polygon RPC URL>
   AVAX=<Your Avalanche RPC URL>
   PK=<Your Private Key>
   ```

3. **Deploy Contracts:**
   - Deploy `sender.sol` on the Polygon Amoy Testnet:
     ```bash
     forge script script/senderDeploy.s.sol --rpc-url $POL --private-key $PK --broadcast
     ```
   - Deploy `receiver.sol` on the Avalanche Fuji Testnet:
     ```bash
     forge script script/receiverDeploy.s.sol --rpc-url $AVAX --private-key $PK --broadcast
     ```
   - Deploy `stake.sol` on the Avalanche Fuji Testnet:
     ```bash
     forge script script/stakeDeploy.s.sol --rpc-url $AVAX --private-key $PK --broadcast
     ```

## Additional Notes
- Make sure to replace placeholders in the `.env` file with your actual RPC URLs and private key.
- Ensure you have the necessary permissions and funds in your wallets to deploy the contracts.

---

Feel free to customize any sections as needed!