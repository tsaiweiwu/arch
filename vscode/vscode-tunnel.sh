#!/bin/bash
#SBATCH -p express         # partition. Remember to change to a desired partition
#SBATCH -n 4               
#SBATCH --time=1:30:00 # time in HH:MM:SS
#SBATCH -c 1            # number of cores

## https://docs.rc.fas.harvard.edu/kb/vscode-remote-development-via-ssh-or-tunnel/

hostname

set -o errexit -o nounset -o pipefail
MY_SCRATCH=$(TMPDIR=/scratch4/$(id -gn)/$USER mktemp -d)
echo $MY_SCRATCH

#Obtain the tarball and untar it in $MY_SCRATCH location to obtain the
#executable, code, and run it using the provider of your choice
curl -Lk 'https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-x64' | tar -C $MY_SCRATCH -xzf -

#VSCODE_CLI_DISABLE_KEYCHAIN_ENCRYPT=1 $MY_SCRATCH/code tunnel user login --provider github
VSCODE_CLI_DISABLE_KEYCHAIN_ENCRYPT=1 $MY_SCRATCH/code tunnel user login --provider microsoft

#Accept the license terms & launch the tunnel
$MY_SCRATCH/code tunnel --accept-server-license-terms --name cannontunnel
