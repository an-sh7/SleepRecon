# Sleeping Scan

1. This tool runs in the background while you are doing something else or sleeping.
2. It can be used in the bug bounty programs
3. It has security measures which slows down the scan to comply with bug bounty programs.

## How to use

1. Genrate the list of sub_domains and store them into a file named `targets.txt`.
    - You can use the [SubDomainFinder](SubDomainFinder) script I created(It requires the `subfinder` tool).
2. Run the `SleepingScan.sh` file.
3. Wait and all your scans will be in the logs folder.
