#!/bin/sh
#
# Perform basic settings on a known IP camera
#
#
# Set custom upgrade url
#
fw_setenv upgrade 'https://github.com/djcfg123/builder/releases/download/latest/ssc335de_lite_imou-c22e-s2-v2-nor.tgz'
#
#
# Set custom majestic settings
#
cli -s .system.staticDir /var/www/majestic
cli -s .image.mirror false
cli -s .image.flip false
cli -s .nightMode.irCutPin1 79
cli -s .nightMode.irCutPin2 78
cli -s .nightMode.backlightPin 52
cli -s .nightMode.colorToGray true
cli -s .audio.speakerPin 38
cli -s .video0.codec h264
#
#
# Set wlan device and credentials if need
#
fw_setenv wlandev rtl8188fu-ssc335de-imou-c22e-s2-v2
fw_setenv wlanssid djcfg_home
fw_setenv wlanpass 9ebec696

exit 0
