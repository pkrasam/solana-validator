# 2021 Feb: Solana MB Inflation Candidate Voting

## A simple utility to assist the community with the candidate voting process

### STEPS

- Download this script
  `wget https://raw.githubusercontent.com/pkrasam/solana-validator/main/mb-inflation/sic.sh`
- Grant execution privileges
  `chmod +x sic.sh`
- Execute the script
  `bash sic.sh`

### SCREENs

![SIC About](images/sic_about.png)

![SIC Candidates](images/sic_candidates.png)

### OUTPUT

You might see an output similar to this:

```
 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Candidate Name: certusone
SPL Vote Token: 2rc1w62BpV3V8YtWhDgKPzGyrbUXZEkrG96M6474J4Au
Acceptance Address: HEYN3PqhkywPk34vmNuASGdLHEPHJEhADCQtbGuH5Dae
Tally Address: DkDdbwAif3Ft4TZnWF7mk28wgygdj4JVwFMxSVpJ1bQi
Fetching Account Address using this command:
spl-token --owner /home/solana/keys/validator-identity-keypair.json accounts 2rc1w62BpV3V8YtWhDgKPzGyrbUXZEkrG96M6474J4Au | tail -n1 | awk '{print $1}'
Account Address: 59SvfyWhkj4TeYTzBtCH5ETTJemCUuwCG81k5p8GHvF3
Voting using this command:
spl-token transfer 59SvfyWhkj4TeYTzBtCH5ETTJemCUuwCG81k5p8GHvF3 ALL HEYN3PqhkywPk34vmNuASGdLHEPHJEhADCQtbGuH5Dae --owner /home/solana/keys/validator-identity-keypair.json
Tallying feature proposal using this command:
spl-feature-proposal tally DkDdbwAif3Ft4TZnWF7mk28wgygdj4JVwFMxSVpJ1bQi
 <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
```

Reference:

[Voting Period for Solana Inflation Candidates is LIVE!](https://forums.solana.com/t/voting-period-for-solana-inflation-candidates-is-live/1113)
