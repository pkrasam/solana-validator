# 2020 Nov: TdS PICO inflation

## Couple of simple scripts for steps 1 and 2

Script 1: **solana-lookup-my-pico-inflation-vote-address.sh**

```bash
#!/bin/bash

# This PICO inflation MINT address is provided by the Solana Foundation
SOLANA_FOUNDATION_PICO_INFLATION_SPL_TOKEN_MINT_ADDRESS="432FsYZLkqu6fiXbEm7NDVR58xJPfJTHNzsTSEE1KmwW"

# The output of this command should display your PICO inflation VOTE address
# Please remember to replace "validator-identity-keypair.json" with your
# absolute path and keypair file name
spl-token --owner /home/solana/keys/validator-identity-keypair.json \
  accounts $SOLANA_FOUNDATION_PICO_INFLATION_SPL_TOKEN_MINT_ADDRESS
```


Script 2: **solana-submit-my-pico-inflation-vote.sh**

```bash
#!/bin/bash

# Your VOTE address is displayed to you when you run Script 1
# Please remember to replace the contens w/in "" w/ your VOTE address
MY_PICO_INFLATION_SPL_TOKEN_VOTE_ADDRESS="8xpzAwMPcP3uJUocukZFCFJhhnDnKd3T6vVK3cbUAhHD"

# This PICO inflation ACCEPTANCE address is provided by the Solana Foundation
SOLANA_FOUNDATION_PICO_INFLATION_SPL_TOKEN_ACCEPTANCE_ADDRESS="3iAe6JeecrC5XgrJtrCqFWXqfeh55JEBjcTes3siFbB6"

# This command submits your VOTE for PICO inflation
# Please remember to replace "validator-identity-keypair.json" with your
# absolute path and keypair file name
spl-token --owner /home/solana/keys/validator-identity-keypair.json \
  transfer $MY_PICO_INFLATION_SPL_TOKEN_VOTE_ADDRESS ALL \
  $SOLANA_FOUNDATION_PICO_INFLATION_SPL_TOKEN_ACCEPTANCE_ADDRESS
```


Reference: 

[Final Inflation Parameter Proposal and Steps to Implementation](https://forums.solana.com/t/final-inflation-parameter-proposal-and-steps-to-implementation/977)

[Feature Proposal/Vote: Pico-inflation on testnet](https://forums.solana.com/t/feature-proposal-vote-pico-inflation-on-testnet/990)