#!/bin/bash

# This PICO inflation MINT address is provided by the Solana Foundation
SOLANA_FOUNDATION_PICO_INFLATION_SPL_TOKEN_MINT_ADDRESS="432FsYZLkqu6fiXbEm7NDVR58xJPfJTHNzsTSEE1KmwW"

# The output of this command should display your PICO inflation VOTE address
# Please remember to replace "validator-identity-keypair.json" with your
# absolute path and keypair file name
spl-token --owner /home/solana/keys/validator-identity-keypair.json \
  accounts $SOLANA_FOUNDATION_PICO_INFLATION_SPL_TOKEN_MINT_ADDRESS