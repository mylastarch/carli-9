#!/usr/bin/env bash

set -e -u

# instructions on the making of the iso with this script

if [ -d "work" ]; then
  rm -rf -- "work"
fi

if [ -d "out" ]; then
  rm -rf -- "out"
fi
#airootfs/root/key-script.sh0
WORKDIR="${WORKDIR:-work}"

mkarchiso -v -w work -o out .



# -v is verbose output to the screen
# -w specifies the working directory. If the option is not specified, it will default to work in the current directory. If memory allows, it is preferred to place the working directory on tmpfs (as shown above) to speed up the process.
# -r deletes the working directory (if it was created by mkarchiso) after successfully building the ISO.
# -o specifies the directory where the built ISO image will be placed. If the option is not specified, it will default to out in the current directory.
# It should be noted the profile file profiledef.sh cannot be specified when running mkarchiso, only the path to the file.
# Replace /path/to/profile/ with the path to your custom profile, or with /usr/share/archiso/configs/releng/ if you are building an unmodified profile.

# When run, the script will download and install the packages you specified to work_directory/x86_64/airootfs, create the kernel and init images, apply your customizations and finally build the ISO into the output directory.