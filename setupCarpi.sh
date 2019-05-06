#upgrade system
sudo apt-get update
sudo apt-get upgrade

#remove all crap
sudo apt-get --yes --force-yes remove --purge minecraft-pi 
sudo apt-get --yes --force-yes remove --purge scratch
sudo apt-get --yes --force-yes remove --purge wolfram-engine
sudo apt-get --yes --force-yes remove --purge debian-reference-*
sudo apt-get --yes --force-yes remove --purge epiphany-browser*
sudo apt-get --yes --force-yes remove --purge sonic-pi 
sudo apt-get --yes --force-yes remove --purge supercollider*
sudo apt-get --yes --force-yes clean
rm -r /home/pi/python_games/

#install additional soft
sudo apt-get install mc 

#copy config.txt
sudo cp files/boot/config.txt /boot/config.txt
sudo cp files/etc/hostname /etc/hostname
### /boot/cmdline must have "quiet "

#install splashscreen
sudo cp files/boot.png /usr/share/plymouth/themes/pix/splash.png

#copy x400 sound config
sudo cp files/home/pi/.asoundrc /home/pi/.asoundrc
sudo cp files/etc/modules /etc/modules

#Creating ap
sudo apt-get install hostapd udhcpd
sudo cp files/etc/udhcpd.conf /etc/udhcpd.conf
sudo cp files/etc/default/udhcpd /etc/default/udhcpd
sudo ifconfig wlan0 192.168.1.1
sudo cp files/etc/network/interfaces /etc/network/
sudo cp files/etc/hostapd/* /etc/hostapd/
sudo cp files/etc/default/hostapd /etc/default/
sudo systemctl enable hostapd
sudo systemctl enable udhcpd

#install samba
sudo apt-get install samba
sudo cp files/etc/samba/smb.conf /etc/samba/
sudo systemctl enable smbd

#install mpd
sudo apt-get install mpd
sudo cp files/etc/mpd.conf /etc/mpd.conf
sudo systemctl enable mpd

#install gpsd and navit
sudo apt-get install gpsd gpsd-clients navit
sudo cp files/home/pi/.navit/* /home/pi/.navit/


#copy javaFX 
sudo cp files/jfxgluon/lib/javafx-mx.jar /usr/lib/jvm/jdk-8-oracle-arm32-vfp-hflt/lib/
sudo cp files/jfxgluon/rt/lib/j* /usr/lib/jvm/jdk-8-oracle-arm32-vfp-hflt/jre/lib/
sudo cp files/jfxgluon/rt/lib/arm/* /usr/lib/jvm/jdk-8-oracle-arm32-vfp-hflt/jre/lib/arm/
sudo cp files/jfxgluon/rt/lib/ext/* /usr/lib/jvm/jdk-8-oracle-arm32-vfp-hflt/jre/lib/ext/

#copy CarPiJ2FX
sudo cp -r files/home/pi/CarPiJ2FX /home/pi/


