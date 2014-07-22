#!/bin/bash

#
# NOTE: NEVER rename a *.tar.md5! Convert the recovery.img again if you want to rename the file!
#
# 17.07.2014 Android-Andi @ XDA
# Thanks to ketut.kumajaya @ XDA
#

#---------------------Device Settings------------------#

# device name in your "out" folder
DEVICENAME1[0]="p3110"
DEVICENAME1[1]="p3100"
DEVICENAME1[2]="p5100"
DEVICENAME1[3]="p5110"
DEVICENAME1[4]="golden"

# device name for the name of the zip
DEVICENAME2[0]="GT-P3110"
DEVICENAME2[1]="GT-P3100"
DEVICENAME2[2]="GT-P5100"
DEVICENAME2[3]="GT-P5110"
DEVICENAME2[4]="GT-I8190"

#---------------------General Settings------------------#

# select "y" or "n"... Or fill in the blanks...

# recoveryname
#RECNAME1="TWRP"
#RECNAME1="CWM"
#RECNAME1="ClockworkMod-Recovery"
RECNAME1="PhilZ-Touch-Recovery"
RECNAME2="philz_touch"

# recovery version number
#RECVER="2.7.1.1"
#RECVER="6.0.5.0"
RECVER="6.50.6"

# move the *.tar.md5 and recovery.img?
MOVE=y

# path to move the *.tar.md5
STORAGE=~/android/roms/recovery

# Your build source code directory path.
# If your source code directory is on an external HDD it should look like: 
# //media/your PC username/the name of your storage device/path/to/your/source/code/folder
SAUCE=~/android/cm11


#---------------------Convert & Move Code----------------#
# Very much not a good idea to change this unless you know what you are doing....

for VAL in "${!DEVICENAME1[@]}"
do

echo "Moving to out directory..."
cd $SAUCE
cd out/target/product/${DEVICENAME1[$VAL]}

echo "Converting..."
tar -H ustar -c recovery.img > ${DEVICENAME2[$VAL]}"_"$RECNAME1"_"$RECVER".tar"
md5sum -t ${DEVICENAME2[$VAL]}"_"$RECNAME1"_"$RECVER".tar" >> ${DEVICENAME2[$VAL]}"_"$RECNAME1"_"$RECVER".tar"
mv ${DEVICENAME2[$VAL]}"_"$RECNAME1"_"$RECVER".tar" ${DEVICENAME2[$VAL]}"_"$RECNAME1"_"$RECVER".tar.md5"

if [ $RECNAME1 = "PhilZ-Touch-Recovery" ]; then
echo "Converting for Phil's goo.im ..."
tar -H ustar -c recovery.img > $RECNAME2"_"$RECVER"-"${DEVICENAME1[$VAL]}".tar"
md5sum -t $RECNAME2"_"$RECVER"-"${DEVICENAME1[$VAL]}".tar" >> $RECNAME2"_"$RECVER"-"${DEVICENAME1[$VAL]}".tar"
mv $RECNAME2"_"$RECVER"-"${DEVICENAME1[$VAL]}".tar" $RECNAME2"_"$RECVER"-"${DEVICENAME1[$VAL]}".tar.md5"
fi

if [ $MOVE = "y" ]; then
echo "moveing odin flashable *.tar.md5"
mkdir -p $STORAGE/$RECNAME1/$RECVER
mv *".tar.md5" $STORAGE/$RECNAME1/
cp "recovery.img" $STORAGE/$RECNAME1/$RECVER/${DEVICENAME2[$VAL]}"_"$RECNAME1"_"$RECVER".img"
fi

echo "Moving back to source directory..."
cd $SAUCE

done

echo "Done!"
