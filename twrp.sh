#!/bin/bash

#
# NOTE: NEVER rename a *.tar.md5! Convert the recovery.img again if you want to rename the file!
#
# Jul 2014 Android-Andi @ XDA
# Thanks to ketut.kumajaya @ XDA
#

#---------------------Device Settings------------------#

# device name in your "out" folder
DEVICENAMEG1[0]="golden"

# 2nd device name to rename the *.tar.md5 and *.zip the right way
# the odin-flashable tar.md5 will be name like this: DEVICENAMEG2_RECNAME1_RECVER.tar
DEVICENAMEG2[0]="GT-I8190"

#---------------------General Settings------------------#

# select "y" or "n"... Or fill in the blanks... some examples placed in allready.

# recoveryname
RECNAME1="TWRP"

# recovery version number
RECVER="2.8.6.4"

# Move the *.tar.md5 and recovery.img?
MOVE=y

# path to move the *.tar.md5 
#(*.img and *.zip will also get moved if MOVE=y)
STORAGE=/var/www/html/SlimLP

# Create a flashable zip?
FLASHZIP=y

# Place your pre-flashable-zip in this path. Nameing of the zip: DEVICENAMEG1-RECNAME1.zip
ZIPBASE=~/recovery_base

# Your build source code directory path.
# If your source code directory is on an external HDD it should look like: 
# //media/your PC username/the name of your storage device/path/to/your/source/code/folder
SAUCE=~/lp5.1


#---------------------Convert & Move Code----------------#
# Very much not a good idea to change this unless you know what you are doing....

for VAL in "${!DEVICENAMEG1[@]}"
do
cd $SAUCE

echo "Moving to out directory ( ${DEVICENAMEG2[$VAL]} ) ..."
cd $SAUCE/out/target/product/${DEVICENAMEG1[$VAL]}

echo "Converting recovery.img to a odinflashable *.tar.md5 ..."
tar -H ustar -c recovery.img > ${DEVICENAMEG2[$VAL]}"_"$RECNAME1"_"$RECVER".tar"
md5sum -t ${DEVICENAMEG2[$VAL]}"_"$RECNAME1"_"$RECVER".tar" >> ${DEVICENAMEG2[$VAL]}"_"$RECNAME1"_"$RECVER".tar"
mv ${DEVICENAMEG2[$VAL]}"_"$RECNAME1"_"$RECVER".tar" ${DEVICENAMEG2[$VAL]}"_"$RECNAME1"_"$RECVER".tar.md5"

if [ $MOVE = "y" ]; then
echo "Moveing odin flashable *.tar.md5...."
#mkdir -p $STORAGE/${DEVICENAMEG1[$VAL]}
mv *".tar.md5" $STORAGE/${DEVICENAMEG1[$VAL]}/
cp "recovery.img" $STORAGE/${DEVICENAMEG1[$VAL]}/${DEVICENAMEG2[$VAL]}"_"$RECNAME1"_"$RECVER".img"
fi

if [ $FLASHZIP = "y" ]; then
echo "Makeing flashable zip..."
cp $ZIPBASE/${DEVICENAMEG1[$VAL]}"-"$RECNAME1".zip" $STORAGE/${DEVICENAMEG1[$VAL]}/${DEVICENAMEG2[$VAL]}"_"$RECNAME1"_"$RECVER".zip"
zip -g $STORAGE/${DEVICENAMEG1[$VAL]}/${DEVICENAMEG2[$VAL]}"_"$RECNAME1"_"$RECVER".zip" "recovery.img"
fi

echo "Moving back to source directory..."
cd $SAUCE

done

echo "Done!"
