#!/usr/bin/env bash

# configure 
path_to_keys="/home/solana/keys/"
validator_identity="validator-identity-keypair.json"

exists()
{
  command -v "$1" > /dev/null 2>&1
}

if exists dialog; then
  echo "good news...dialog exists"
else
  echo "installing dialog...please wait"
  sudo apt-get install dialog -y
fi

##################################################
dialog --backtitle "Solana Inflation Candidates (SIC)" \
--title "About - [ SIC ]" \
--msgbox "Scripts to help the voting process for Solana Inflation Candidates (SIC)" 0 0
##################################################
cmd=(dialog --separate-output --checklist "Solana Inflation Candidates (SIC):" 0 0 0) \
options=(01 "bl" off
         02 "buburuza" off
         03 "bunghi" off
         04 "certusone" off
         05 "diman" off
         06 "lowfeevalidation" off
         07 "nam" off
         08 "p2pvalidator" off
         09 "rockx" off
         10 "sotcsa" off
         11 "stakeconomy" off
         12 "w3m" off)
##################################################
choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

for choice in $choices
do
  case $choice in
    01)
      echo -e "$(tput bold) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> $(tput sgr0)"
      candidate_name="bl"
      spl_vote_token="2KKKuf83tqVs32BEGUkJSEz9oYo8ACKK2U8Y8bwFaWF2"
      acceptance_address="2QvHWrvLV63cArJEkC8m9sVSRqRxiBYqqSnjbLfnTduK"
      tally_address="3SxbXkCYRNkkihyH3x7Z3rJCTQjiExzZwzPboA7wGoPL"
      echo "Candidate Name: $candidate_name"
      echo "SPL Vote Token: $spl_vote_token"
      echo "Acceptance Address: $acceptance_address"
      echo "Tally Address: $tally_address"
      cmd_spl_token_accounts="spl-token --owner $path_to_keys$validator_identity accounts $spl_vote_token | tail -n1 | awk '{print \$1}'"
      echo "Fetching Account Address using this command:"
      echo $cmd_spl_token_accounts
      account_address=$(spl-token --owner $path_to_keys$validator_identity accounts $spl_vote_token | tail -n1 | awk '{print $1}')
      echo "Account Address: $account_address"
      cmd_spl_token_transfer="spl-token transfer ${account_address} ALL ${acceptance_address} --owner $path_to_keys$validator_identity"
      echo "Voting using this command:"
      echo $cmd_spl_token_transfer
      ($cmd_spl_token_transfer)
      cmd_spl_feature_proposal_tally="spl-feature-proposal tally $tally_address"
      echo "Tallying feature proposal using this command:"
      echo $cmd_spl_feature_proposal_tally
      ($cmd_spl_feature_proposal_tally)
      echo -e "$(tput bold) <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< $(tput sgr0)"
      ;;
    02)
      echo -e "$(tput bold) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> $(tput sgr0)"
      candidate_name="buburuza"
      spl_vote_token="8k5tSs82kVPMpRyCgUwfREULScMwsWf1TAWKUfbKvSsV"
      acceptance_address="BSLgAVq6ggEz7UAZ1XEmJMR9bWeAGk3YLHqDfXJ7L18u"
      tally_address="J2t3sNUx5yKFTAK6sWysEsgcX6DTqWoSAEKPY8J42UbC"
      echo "Candidate Name: $candidate_name"
      echo "SPL Vote Token: $spl_vote_token"
      echo "Acceptance Address: $acceptance_address"
      echo "Tally Address: $tally_address"
      cmd_spl_token_accounts="spl-token --owner $path_to_keys$validator_identity accounts $spl_vote_token | tail -n1 | awk '{print \$1}'"
      echo "Fetching Account Address using this command:"
      echo $cmd_spl_token_accounts
      account_address=$(spl-token --owner $path_to_keys$validator_identity accounts $spl_vote_token | tail -n1 | awk '{print $1}')
      echo "Account Address: $account_address"
      cmd_spl_token_transfer="spl-token transfer ${account_address} ALL ${acceptance_address} --owner $path_to_keys$validator_identity"
      echo "Voting using this command:"
      echo $cmd_spl_token_transfer
      ($cmd_spl_token_transfer)
      cmd_spl_feature_proposal_tally="spl-feature-proposal tally $tally_address"
      echo "Tallying feature proposal using this command:"
      echo $cmd_spl_feature_proposal_tally
      ($cmd_spl_feature_proposal_tally)
      echo -e "$(tput bold) <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< $(tput sgr0)"
      ;;
    03)
      echo -e "$(tput bold) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> $(tput sgr0)"
      candidate_name="bunghi"
      spl_vote_token="C5HKZaG8TGwuxKf44StnbRpAoMrsSrAWCcLk11Br6GDV"
      acceptance_address="VohZe3L3xCdwnuGqNDt66ETMRSnhuxR9Ce5piKd67RT"
      tally_address="FLybyXMUTVd5xK8Fz5pJP21NmdMPY3p7Xh2U7vdsL6FP"
      echo "Candidate Name: $candidate_name"
      echo "SPL Vote Token: $spl_vote_token"
      echo "Acceptance Address: $acceptance_address"
      echo "Tally Address: $tally_address"
      cmd_spl_token_accounts="spl-token --owner $path_to_keys$validator_identity accounts $spl_vote_token | tail -n1 | awk '{print \$1}'"
      echo "Fetching Account Address using this command:"
      echo $cmd_spl_token_accounts
      account_address=$(spl-token --owner $path_to_keys$validator_identity accounts $spl_vote_token | tail -n1 | awk '{print $1}')
      echo "Account Address: $account_address"
      cmd_spl_token_transfer="spl-token transfer ${account_address} ALL ${acceptance_address} --owner $path_to_keys$validator_identity"
      echo "Voting using this command:"
      echo $cmd_spl_token_transfer
      ($cmd_spl_token_transfer)
      cmd_spl_feature_proposal_tally="spl-feature-proposal tally $tally_address"
      echo "Tallying feature proposal using this command:"
      echo $cmd_spl_feature_proposal_tally
      ($cmd_spl_feature_proposal_tally)
      echo -e "$(tput bold) <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< $(tput sgr0)"
      ;;
    04)
      echo -e "$(tput bold) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> $(tput sgr0)"
      candidate_name="certusone"
      spl_vote_token="2rc1w62BpV3V8YtWhDgKPzGyrbUXZEkrG96M6474J4Au"
      acceptance_address="HEYN3PqhkywPk34vmNuASGdLHEPHJEhADCQtbGuH5Dae"
      tally_address="DkDdbwAif3Ft4TZnWF7mk28wgygdj4JVwFMxSVpJ1bQi"
      echo "Candidate Name: $candidate_name"
      echo "SPL Vote Token: $spl_vote_token"
      echo "Acceptance Address: $acceptance_address"
      echo "Tally Address: $tally_address"
      cmd_spl_token_accounts="spl-token --owner $path_to_keys$validator_identity accounts $spl_vote_token | tail -n1 | awk '{print \$1}'"
      echo "Fetching Account Address using this command:"
      echo $cmd_spl_token_accounts
      account_address=$(spl-token --owner $path_to_keys$validator_identity accounts $spl_vote_token | tail -n1 | awk '{print $1}')
      echo "Account Address: $account_address"
      cmd_spl_token_transfer="spl-token transfer ${account_address} ALL ${acceptance_address} --owner $path_to_keys$validator_identity"
      echo "Voting using this command:"
      echo $cmd_spl_token_transfer
      ($cmd_spl_token_transfer)
      cmd_spl_feature_proposal_tally="spl-feature-proposal tally $tally_address"
      echo "Tallying feature proposal using this command:"
      echo $cmd_spl_feature_proposal_tally
      ($cmd_spl_feature_proposal_tally)
      echo -e "$(tput bold) <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< $(tput sgr0)"
      ;;
    05)
      echo -e "$(tput bold) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> $(tput sgr0)"
      candidate_name="diman"
      spl_vote_token="DTC7tTwxv93z3T1fQS3kpGn6cwR5B7uK2mLK6vX2NCBU	"
      acceptance_address="V2vrCb5YAYwBaPwTWzvKKzwNJDhAPLfhoi5dFZBxfQN"
      tally_address="47XGnhA2FooJnigHKupCdMUSrF8ozopJwVGBpf4RGW3F"
      echo "Candidate Name: $candidate_name"
      echo "SPL Vote Token: $spl_vote_token"
      echo "Acceptance Address: $acceptance_address"
      echo "Tally Address: $tally_address"
      cmd_spl_token_accounts="spl-token --owner $path_to_keys$validator_identity accounts $spl_vote_token | tail -n1 | awk '{print \$1}'"
      echo "Fetching Account Address using this command:"
      echo $cmd_spl_token_accounts
      account_address=$(spl-token --owner $path_to_keys$validator_identity accounts $spl_vote_token | tail -n1 | awk '{print $1}')
      echo "Account Address: $account_address"
      cmd_spl_token_transfer="spl-token transfer ${account_address} ALL ${acceptance_address} --owner $path_to_keys$validator_identity"
      echo "Voting using this command:"
      echo $cmd_spl_token_transfer
      ($cmd_spl_token_transfer)
      cmd_spl_feature_proposal_tally="spl-feature-proposal tally $tally_address"
      echo "Tallying feature proposal using this command:"
      echo $cmd_spl_feature_proposal_tally
      ($cmd_spl_feature_proposal_tally)
      echo -e "$(tput bold) <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< $(tput sgr0)"
      ;;
    06)
      echo -e "$(tput bold) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> $(tput sgr0)"
      candidate_name="lowfeevalidation"
      spl_vote_token="5CNZVCzwCop6GWQ7tRJguRmpgWhwwFyXNKK1hnbHRzkB"
      acceptance_address="AYn1mAbFBdkv9DJxcZ18oSggKcHrBCKD8PooyztY8pT8"
      tally_address="9Vr2hFp99CcvxzEjSJcu4noB6mCTEDmfqwWkHg3q1NLW"
      echo "Candidate Name: $candidate_name"
      echo "SPL Vote Token: $spl_vote_token"
      echo "Acceptance Address: $acceptance_address"
      echo "Tally Address: $tally_address"
      cmd_spl_token_accounts="spl-token --owner $path_to_keys$validator_identity accounts $spl_vote_token | tail -n1 | awk '{print \$1}'"
      echo "Fetching Account Address using this command:"
      echo $cmd_spl_token_accounts
      account_address=$(spl-token --owner $path_to_keys$validator_identity accounts $spl_vote_token | tail -n1 | awk '{print $1}')
      echo "Account Address: $account_address"
      cmd_spl_token_transfer="spl-token transfer ${account_address} ALL ${acceptance_address} --owner $path_to_keys$validator_identity"
      echo "Voting using this command:"
      echo $cmd_spl_token_transfer
      ($cmd_spl_token_transfer)
      cmd_spl_feature_proposal_tally="spl-feature-proposal tally $tally_address"
      echo "Tallying feature proposal using this command:"
      echo $cmd_spl_feature_proposal_tally
      ($cmd_spl_feature_proposal_tally)
      echo -e "$(tput bold) <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< $(tput sgr0)"
      ;;
    07)
      echo -e "$(tput bold) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> $(tput sgr0)"
      candidate_name="nam"
      spl_vote_token="DMxcrp54h4kC4G2chJYqtq7RQVqtQZ3hzzBq95Q1ZzT6"
      acceptance_address="FzZDWR2PZRJNTA7E2D8t5zrQds7oBMb7itzXrzYBWPdb"
      tally_address="9bWvPSEK4L8Xs46QG4ewQbXWRL378RWdL2c6iX3HZk27"
      echo "Candidate Name: $candidate_name"
      echo "SPL Vote Token: $spl_vote_token"
      echo "Acceptance Address: $acceptance_address"
      echo "Tally Address: $tally_address"
      cmd_spl_token_accounts="spl-token --owner $path_to_keys$validator_identity accounts $spl_vote_token | tail -n1 | awk '{print \$1}'"
      echo "Fetching Account Address using this command:"
      echo $cmd_spl_token_accounts
      account_address=$(spl-token --owner $path_to_keys$validator_identity accounts $spl_vote_token | tail -n1 | awk '{print $1}')
      echo "Account Address: $account_address"
      cmd_spl_token_transfer="spl-token transfer ${account_address} ALL ${acceptance_address} --owner $path_to_keys$validator_identity"
      echo "Voting using this command:"
      echo $cmd_spl_token_transfer
      ($cmd_spl_token_transfer)
      cmd_spl_feature_proposal_tally="spl-feature-proposal tally $tally_address"
      echo "Tallying feature proposal using this command:"
      echo $cmd_spl_feature_proposal_tally
      ($cmd_spl_feature_proposal_tally)
      echo -e "$(tput bold) <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< $(tput sgr0)"
      ;;
    08)
      echo -e "$(tput bold) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> $(tput sgr0)"
      candidate_name="p2pvalidator"
      spl_vote_token="3xaGtjea4VYkWSAn1x1Rj1k8Tqbm1gEXuGfnP7tXJmP5"
      acceptance_address="6rgjbtT1BMiSmnr8osRcugN3xUbCuSDAWJK6KJJVqQRU"
      tally_address="AA4cpnyayF28atBHYVD5sofwqSmxDwbY4sxXxbFiQJzg"
      echo "Candidate Name: $candidate_name"
      echo "SPL Vote Token: $spl_vote_token"
      echo "Acceptance Address: $acceptance_address"
      echo "Tally Address: $tally_address"
      cmd_spl_token_accounts="spl-token --owner $path_to_keys$validator_identity accounts $spl_vote_token | tail -n1 | awk '{print \$1}'"
      echo "Fetching Account Address using this command:"
      echo $cmd_spl_token_accounts
      account_address=$(spl-token --owner $path_to_keys$validator_identity accounts $spl_vote_token | tail -n1 | awk '{print $1}')
      echo "Account Address: $account_address"
      cmd_spl_token_transfer="spl-token transfer ${account_address} ALL ${acceptance_address} --owner $path_to_keys$validator_identity"
      echo "Voting using this command:"
      echo $cmd_spl_token_transfer
      ($cmd_spl_token_transfer)
      cmd_spl_feature_proposal_tally="spl-feature-proposal tally $tally_address"
      echo "Tallying feature proposal using this command:"
      echo $cmd_spl_feature_proposal_tally
      ($cmd_spl_feature_proposal_tally)
      echo -e "$(tput bold) <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< $(tput sgr0)"
      ;;
    09)
      echo -e "$(tput bold) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> $(tput sgr0)"
      candidate_name="rockx"
      spl_vote_token="9PMjMPW5tTzJF6ebZCdfcY1NhMwo56dDW58mM6UgV81q"
      acceptance_address="CDDktKFiGGhtftU2f5sca2mfSPN66qdh1pPTAFwpdStn"
      tally_address="2GQiV71ze3UnPcdMUpNrkTLHVGMXVnPP4hfmKA3kgwTw"
      echo "Candidate Name: $candidate_name"
      echo "SPL Vote Token: $spl_vote_token"
      echo "Acceptance Address: $acceptance_address"
      echo "Tally Address: $tally_address"
      cmd_spl_token_accounts="spl-token --owner $path_to_keys$validator_identity accounts $spl_vote_token | tail -n1 | awk '{print \$1}'"
      echo "Fetching Account Address using this command:"
      echo $cmd_spl_token_accounts
      account_address=$(spl-token --owner $path_to_keys$validator_identity accounts $spl_vote_token | tail -n1 | awk '{print $1}')
      echo "Account Address: $account_address"
      cmd_spl_token_transfer="spl-token transfer ${account_address} ALL ${acceptance_address} --owner $path_to_keys$validator_identity"
      echo "Voting using this command:"
      echo $cmd_spl_token_transfer
      ($cmd_spl_token_transfer)
      cmd_spl_feature_proposal_tally="spl-feature-proposal tally $tally_address"
      echo "Tallying feature proposal using this command:"
      echo $cmd_spl_feature_proposal_tally
      ($cmd_spl_feature_proposal_tally)
      echo -e "$(tput bold) <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< $(tput sgr0)"
      ;;
    10)
      echo -e "$(tput bold) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> $(tput sgr0)"
      candidate_name="sotcsa"
      spl_vote_token="9MDcruLwsRufRqSBRqtfEtMmZbsVfRBMutW1bzFRpLx6"
      acceptance_address="EEY6Y59x28DaymX4SRTuhT8BnDoGbv94p3YMXd9Uf6pZ"
      tally_address="DiBMD1yxe3j3XWq9YzxH9HGykfV66dyUi97kDjWKjRuM"
      echo "Candidate Name: $candidate_name"
      echo "SPL Vote Token: $spl_vote_token"
      echo "Acceptance Address: $acceptance_address"
      echo "Tally Address: $tally_address"
      cmd_spl_token_accounts="spl-token --owner $path_to_keys$validator_identity accounts $spl_vote_token | tail -n1 | awk '{print \$1}'"
      echo "Fetching Account Address using this command:"
      echo $cmd_spl_token_accounts
      account_address=$(spl-token --owner $path_to_keys$validator_identity accounts $spl_vote_token | tail -n1 | awk '{print $1}')
      echo "Account Address: $account_address"
      cmd_spl_token_transfer="spl-token transfer ${account_address} ALL ${acceptance_address} --owner $path_to_keys$validator_identity"
      echo "Voting using this command:"
      echo $cmd_spl_token_transfer
      ($cmd_spl_token_transfer)
      cmd_spl_feature_proposal_tally="spl-feature-proposal tally $tally_address"
      echo "Tallying feature proposal using this command:"
      echo $cmd_spl_feature_proposal_tally
      ($cmd_spl_feature_proposal_tally)
      echo -e "$(tput bold) <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< $(tput sgr0)"
      ;;
    11)
      echo -e "$(tput bold) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> $(tput sgr0)"
      candidate_name="stakeconomy"
      spl_vote_token="HivsTA1FRJ3WjusCAzzHgCTcWhMH6EQ3RywAUh7HmNWT"
      acceptance_address="BVqwTvqHWjCz8oQzVijwNb88yzVCGRVXhHMgtLtovnwp"
      tally_address="EV9wSET5ijmiaiFNjYLcxnWYeSLtyD9d6ZtUoPCgJgt8"
      echo "Candidate Name: $candidate_name"
      echo "SPL Vote Token: $spl_vote_token"
      echo "Acceptance Address: $acceptance_address"
      echo "Tally Address: $tally_address"
      cmd_spl_token_accounts="spl-token --owner $path_to_keys$validator_identity accounts $spl_vote_token | tail -n1 | awk '{print \$1}'"
      echo "Fetching Account Address using this command:"
      echo $cmd_spl_token_accounts
      account_address=$(spl-token --owner $path_to_keys$validator_identity accounts $spl_vote_token | tail -n1 | awk '{print $1}')
      echo "Account Address: $account_address"
      cmd_spl_token_transfer="spl-token transfer ${account_address} ALL ${acceptance_address} --owner $path_to_keys$validator_identity"
      echo "Voting using this command:"
      echo $cmd_spl_token_transfer
      ($cmd_spl_token_transfer)
      cmd_spl_feature_proposal_tally="spl-feature-proposal tally $tally_address"
      echo "Tallying feature proposal using this command:"
      echo $cmd_spl_feature_proposal_tally
      ($cmd_spl_feature_proposal_tally)      
      echo -e "$(tput bold) <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< $(tput sgr0)"
      ;;
    12)
      echo -e "$(tput bold) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> $(tput sgr0)"
      candidate_name="w3m"
      spl_vote_token="C73cnBgAWjEsPEicrWPBxFdNQ4WNZJdChFYEaK5u5R43"
      acceptance_address="EamCSZ2jwQRJPX1bUN6ayfnUD4Gt6mqvM6zBb7VNRtf"
      tally_address="BgoyvywoGJMXchdNVF2TBxpRReofQRa4pPdRkmFdJ3ik"
      echo "Candidate Name: $candidate_name"
      echo "SPL Vote Token: $spl_vote_token"
      echo "Acceptance Address: $acceptance_address"
      echo "Tally Address: $tally_address"
      cmd_spl_token_accounts="spl-token --owner $path_to_keys$validator_identity accounts $spl_vote_token | tail -n1 | awk '{print \$1}'"
      echo "Fetching Account Address using this command:"
      echo $cmd_spl_token_accounts
      account_address=$(spl-token --owner $path_to_keys$validator_identity accounts $spl_vote_token | tail -n1 | awk '{print $1}')
      echo "Account Address: $account_address"
      cmd_spl_token_transfer="spl-token transfer ${account_address} ALL ${acceptance_address} --owner $path_to_keys$validator_identity"
      echo "Voting using this command:"
      echo $cmd_spl_token_transfer
      ($cmd_spl_token_transfer)
      cmd_spl_feature_proposal_tally="spl-feature-proposal tally $tally_address"
      echo "Tallying feature proposal using this command:"
      echo $cmd_spl_feature_proposal_tally
      ($cmd_spl_feature_proposal_tally)
      echo -e "$(tput bold) <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< $(tput sgr0)"
      ;;
      
   esac
done




### We are at the start of the beginning