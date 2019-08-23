#
# This script set pwd if path is open in external partition
#
directory=$(echo ${PWD##*/Users/Confi})
match=$(echo $PWD|grep -i "/Users/Confi")

if [ -z $match ]; then # test if the variable is empty
  # do nothing if pwth does not match
else
    echo $directory
    export PS1=$directory
fi