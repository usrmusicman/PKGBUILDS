#/bin/sh

# Set shell options
shopt -s dotglob
shopt -s nullglob

# Set package build directory variable
pkgbuild=(*)

# Set base directory variable where the script resides
scriptdir=$PWD

# Clear screen
clear

# Update each packages repository
for item in ${pkgbuild[@]};
do
    if [[ -d $scriptdir/$item ]]; then
        cd $scriptdir/$item
        echo "Updating repo ${item}..."
        git pull
        echo ""
    fi
done
