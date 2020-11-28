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