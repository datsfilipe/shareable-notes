---
title: "digging-into-web3-and-blockchain-stuff"
---

## Crypto

- South Korean in the middle of a polithical crisis couldn't take place soon in the cryptocurrencies ascenssion and that led an so much connected society to have the biggest number of investors in crypto in the world.
- **ICO** stands for Initial Coin Offer, it's a cheaper alternative for IPO's. Basically investors could by "Tokens" or "Security tokens" in the hope that it'll have a higher value in the future or to exchange for company's products/services.
    - There's no intermediary taxes (banks, brokers).
    - Of course, the token will only has value on the network it operates.
    - Security Tokens: the owners of these tokens have a stake in an asset (that has real value such as equity, a company, real estate, etc.). Owners receive a share from the profits of the asset; like owning stock from the company.
- **DAO** stands for Descentralized Autonomous Organization. A structure with no central authority. Members of a DAO own **tokens** of the DAO. Those members are like **shareholders** and they can vote on initiatives.

## Blockchain

- Blockchains introduced for the first time in the internet the concept of non-fungibility: you can have a non-duplicable digital asset which the propriety can be transmitted from a user to another and there's a public consensus about this propriety. That's the oppositte of piracy.
- **Off-chain** refers to transactions or data that are conducted or stored outside of the main blockchain network.
- Every step linked to an **On-chain** transaction occurs on the blockchain, and the blockchain status is modified to reflect the occurrence and validity of the transaction.
- Combining descentralization with speed: Off-chains can be used to operate side by side with more secure blockchains to gain speed.
- Hybrid blockchain means a blockchain that has a public and a private layer. It suits for organizations who want to keep sensitive data in the private layer but still need to expose some data in the public layer for transparency.
- Blockchains are like append-only databases with timestamps for the registries. We can only add new entries and not ever modify the past.

## Transactions

- Cryptographic hashes are the essence of blockchain addresses.
- Digest is essentially taking **ANYTHING** and generate a digital impression (cryptographic hash) with it.
- Transactions are basically a structure like ```json
{
  "from": "0xaaaaaaaaaaa",
  "to": "0xbbbbbbbbbbb",
  "value": 0.22
}
```
- Transactions accumulates in blocks. Another analogy can be done with git. It's like if I created a new `branch` (block), added my changes to `commit` and push to remote, then I'll open a `PR` accumulate transactions in this until someone reviews it and `merge` into the `main` branch (chain).
- Another analogy to understand a block is to visualize it as an amount of `hex` colors (each transaction) that are interligated until a root color that is generated using all the other ones, so if any color changes, the root color also changes and the `block` is invalid.
- Crypto miners are basically algorithms to find the correct hashes to assign a block in a blockchain that will be valid.
- To avoid the easiness to assign blocks in Bitcoin blockchain for example, zeros are used as prefixes to the hashes, the aim is to only permit block assigns from 10 to 10 minutes.
- **POW** vs **POS** mineration of crypto: in the first one the reward is when you find the hash, not very sustainable in some cases. In the second each miner puts his money in stake and if he's cheating he loses that money, so there's more incentive to do it correctly.

## Fun Fact

There was a discussion regarding the use of blockchains for political elections to store people's vote. The phrase that answers this question is: "Blockchains can be used for private elections in which the vote itself is public, but **not** for public elections in which the vote is private" - by Diego F. Aranha. Basically blockchain can guarantee the integrity of the vote, but not it's secret.

# References

- [@akitando on YouTube about blockchain & crypto [PT-BR]](https://www.youtube.com/watch?v=BEaVdiTiiH4&list=PL9vIjH64-q-v4vf9XtHzdS_ffycQ7w5DC&index=1)
