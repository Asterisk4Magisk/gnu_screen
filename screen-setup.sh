#!/system/bin/sh

MGKIMG=/sbin/.core/img
MODID=com.geofferey.screen
MODDIR=${0%/*}
HOME=/data/home


if ! [ -d $HOME ]; then

  mkdir -p $HOME

fi


chown root:everybody $HOME

chmod 770 $HOME

chcon u:object_r:app_data_file:s0 $HOME

chcon -R u:object_r:system_file:s0 $MGKIMG/$MODID/terminfo

ln -fs $MGKIMG/$MODID/screen /sbin/screen

exit 0
