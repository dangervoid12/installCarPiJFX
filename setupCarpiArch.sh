#upgrade system
sudo pacman -Syyu

#install additional soft
sudo pacman -S mc unzip unrar 

#copy config.txt
sudo cp filesArch/boot/config.txt /boot/config.txt
sudo cp filesArch/etc/hostname /etc/hostname
### /boot/cmdline must have "quiet "

#install splashscreen
#sudo cp files/boot.png /usr/share/plymouth/themes/pix/splash.png

#copy x400 sound config
sudo cp files/home/pi/.asoundrc /home/pi/.asoundrc
sudo cp files/etc/modules /etc/modules

#Creating ap
sudo pacman -S create_ap
#create_ap wlan0 eth0 CarPiAP myCarPi12
sudo cp filesArch/etc/systemd/system/createAP.service /etc/systemd/system/
sudo systemctl enable createAP.service


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
sudo cp files/jfxgluon/lib/javafx-mx.jar /usr/lib/jvm/java-8-openjdk/lib/
sudo cp files/jfxgluon/rt/lib/j* /usr/lib/jvm/java-8-openjdk/jre/lib/
sudo cp files/jfxgluon/rt/lib/arm/* /usr/lib/jvm/java-8-openjdk/jre/lib/arm/
sudo cp files/jfxgluon/rt/lib/ext/* /usr/lib/jvm/java-8-openjdk/jre/lib/ext/

#otherpkg
sudo pacman -U filesArch/pkg/*.xz

#setup relay
mkdir /home/alarm/.carpi
sudo cp filesArch/home/alarm/.carpi/gpio /home/alarm/.carpi/
sudo cp filesArch/home/alarm/.carpi/setupGpio.sh /home/alarm/.carpi/

#setup arduino bits
#sudo cp filesArch/usr/share/arduino /usr/share/ -R
#not used anymore, everything 
sudo pacman -S arduino-avr-core
sudo pacman -U filesArch/pkg1/arduino-mk.xz

#copy CarPiJ2FX
sudo cp -r files/home/pi/CarPiJ2FX /home/pi/
sudo cp filesArch/home/alarm/.carpi/runNavit.sh /home/alarm/.carpi/
sudo cp filesArch/home/alarm/.carpi/runNavitStage2.sh /home/alarm/.carpi/
sudo cp filesArch/home/alarm/.carpi/runChromium.sh /home/alarm/.carpi/
sudo cp filesArch/home/alarm/.carpi/runChromiumStage2.sh /home/alarm/.carpi/

sudo cp filesArch/etc/systemd/system/carpi.service /etc/systemd/system/
sudo systemctl enable carpi.service


