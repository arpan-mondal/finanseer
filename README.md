# Finanseer: Unified Account System
## The primary goal is to optimize the utilization of storage capacity within each blockchain by empowering users to access their non-fungible tokens (NFTs) across multiple blockchains using a unified account within any decentralized application (dApp) login. This achievement is facilitated through the implementation of soft delegation, a mechanism that necessitates establishing a connection with a single blockchain.


In order to fully utilize this functionality, it may be necessary to possess NFTs on both the Flow and Ethereum blockchains. Once a delegation has been established to the desired address, connecting with that delegated address allows for the comprehensive display of all associated NFTs. 

For instance, to connect with Ethereum and view NFTs from both Ethereum and Flow, the following steps should be followed:

1. Connect with the Flow blockchain.
2. Set a delegation to your Ethereum Virtual Machine (EVM) address (requires a transaction).
3. The next time you connect to Ethereum, you will be able to observe the NFTs from both Ethereum and Flow.

Conversely, if the aim is to connect with Flow and view NFTs from both Flow and Ethereum, the following steps are required:

1. Connect with the Ethereum blockchain.
2. Set a delegation to your Flow address (requires a transaction).
3. The next time you connect to Flow, you will be able to see the NFTs from both Flow and Ethereum.

To facilitate this functionality, decentralized applications (dApps) must have foreknowledge of each blockchain's contract address (a fixed address unique to each blockchain) and employ delegation lookups. A delegation lookup is a process where addresses from other blockchains that have been added to the blockchain are identified, allowing for the retrieval of associated NFTs. 

Once the delegation has been established, it is only necessary to maintain a connection with a single blockchain to access all the delegated NFTs.

Assumption before Reading the System Design

* blockchain_0, blockchain_1, blockchain_2, and blockchain_n are blockchain with different account protocol.
* user1.b_0, user1.b_1, user1.b_2, and user1.b_n are valid blockchain 0, 1, 2, and n accounts.
* Identity_EVM_SC, Identity_Flow_SC, Identity_Blockchain_1_SC, Identity_Blockchain_2_SC, and Identity_Blockchain_n_SC are the Identity smart contract deployed on each blockchain.
* user1.eth is a valid Ethereum account.
* user1.flow is a valid Flow account.

## Enable the delegation of your Blockchain_0 NFTs to other accounts on different blockchains.

<img width="1250" alt="System_Design_1" src="https://github.com/arpan-mondal/finanseer/assets/66848339/ba6220ec-38f5-4df7-8f3e-bf605bc9cb65">

## Retrieve delegated non-fungible tokens (NFTs) - (Fetching delegated NFTs.)
<img width="1264" alt="System_Design_2" src="https://github.com/arpan-mondal/finanseer/assets/66848339/980151ec-6b05-48fa-ae72-14c1037c453a">

## Authorize the utilization of your Ethereum Virtual Machine (EVM) non-fungible tokens (NFTs) by delegating them to the account "user1.flow."
<img width="685" alt="System_Design_3" src="https://github.com/arpan-mondal/finanseer/assets/66848339/e49c6db5-27dd-45f3-b46d-11be7cd36709">

## Fetch NFT from user1.flow and EVM accounts by only being connected to Flow.
<img width="796" alt="System_Design_4" src="https://github.com/arpan-mondal/finanseer/assets/66848339/a45262c6-ae16-420f-bc71-16f2b5ce65f7">

## Authorize the utilization of your Flow non-fungible tokens (NFTs) by delegating them to the account "user1.eth."
<img width="803" alt="System_Design_5" src="https://github.com/arpan-mondal/finanseer/assets/66848339/8f82cf4e-667d-482e-9a19-054125b01010">

## Fetch NFTs from user1.eth and Flow accounts using only EVM connectivity, in an alternative manner.
<img width="802" alt="System_Design_6" src="https://github.com/arpan-mondal/finanseer/assets/66848339/bf4e4ff9-8f9b-4aed-b0f5-b17e1ca65abc">

# Considerations
* Only working for EVM chains and Flow. For EVM chains, only Ethereum Goerli can be used to set up delegations.
* TRON, SOLANA, CARDANO, etc., added by the use of WalletConnect. 
