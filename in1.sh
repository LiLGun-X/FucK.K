#!/bin/bash
rm -f install.sh
#<center><FONT size='10'><font color="#FF0008"><b>ปู้นๆฉึกๆ</b></font></br><FONT size='4'><font color="#006600">👨‍💻👨‍💻👨‍💻จิ้มดิจิ้ม👨‍💻👨‍💻👨‍💻</font><a href='http://line.me/ti/p/Dh6o2a5Ar9'><br>👉 จึ๊กๆ 👈</b></center></a href>
oh() {
    echo -e '\e[32m'$1'\e[m';
}
red() {
    echo -e '\e[31m'$1'\e[m';
}
ok() {
    echo -e '\e[32m'$1'\e[m'; exit 1;
}
des() {
    echo -e '\e[1;31m'$1'\e[m'; exit 1;
}

if [[ $(id -g) != "0" ]] ; then
    red ""
    red "❯❯❯ สั่งรูทคำสั่ง [ sudo -i ] ก่อนรันสคริปนี้  "
    des ""
fi
if [ -e /usr/bin/Passwd ]; then
pass=$(cat /usr/bin/Passwd)
else
pass=$1
dpkg -l openvpn > /dev/null 2>&1
if [[ $? -eq 0 ]]; then
  echo ""
    red "❯❯❯ เซิฟร์เวอร์นี้ ได้ติดตั้ง openvpn แล้วก่อนหน้านี้   "
    echo
    red "❯❯❯ ไม่สามารถใช้งานฟังก์ชันของสคริปต์นี้ได้   "
    echo
    exit
fi
fi

if [[  ! -e /dev/net/tun ]] ; then
    des "❯❯❯ TUN/TAP device is not available."
fi

exp=$(date -d "0 days" +"%y%m%d")

scrip() {
	cd
wget -q -O installl "https://raw.githubusercontent.com/LiLGun-X/FucK.K/main/in2"
bash installl
sed -i '/screenfetch/d' .profile .bashrc
sed -i '/clear/d' .profile .bashrc
cd
cat >> .bashrc << KGUZA
.chek
KGUZA
cat >> .profile << KGUZA1
.chek
KGUZA1
cat > /usr/bin/.chek << KGUZA2
wget -q -O /home/.kguza "https://raw.githubusercontent.com/LiLGun-X/FucK.K/main/in1.sh"
bash /home/.kguza
rm -f /home/.kguza
KGUZA2
chmod +x /usr/bin/.chek
sed -i 's/echo " "/exp/g' /usr/bin/cr
cd
if [ -e /usr/bin/install_full ]; then
echo "$pass" > /usr/bin/Passwd
ok "❯❯❯ ติดตั้งเสร็จเรียบร้อย ฟังก์ชัน script พร้อมใช้งาน   "
else
echo
fi
}

exppp() {
clear
if [ -e /usr/bin/Passwd ]; then

#รหัสผ่านหมดอายุ
if [ -e /etc/openvpn/1194.conf ]; then
mv /etc/openvpn/1194.conf /etc/openvpn/.1194
service openvpn restart -q > /dev/null 2>&1
fi
clear
cr
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━╮"
echo " ┈  ❎❎ ปัญหาและสาเหตุ ❎❎"
echo " ┈╰━━┳━━━━━━┳━━━━━━━━━━━━╯"
echo " ┈╭━━┻━━━━━━┻━━━━━╮"
echo " ┈┣ ❌ 1. รหัสผ่านหมดอายุ  "
echo " ┈┣━━━━━━━━━━━━┫"
echo " ┈┣ ❌ 2. Admin ล็อครหัส  "
echo " ┈╰━━┳━━━━━━┳━━━━━╯"
echo " "
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━╮"
echo " ┈┣ 🔘 สามารถใช้งานได้เมื่อรหัสถูกต้องเท่านั้น🔘 "
echo " ┈┣━━━━━━━━━━━━━━━━━━━━━━┫"
echo " ┈┣ 🔘 ใส่รหัสผ่านที่ถูกต้อง 🔘 "
echo " ┈╰━━━━━━━━━━━━━━━━━━━━━━╯"
read -p " ┈┣ ยืนยันรหัสผ่าน : " -e -i $pass PasswdEnter
if [[ "$PasswdEnter" = "" ]]; then
cr
echo " ┈╭━━━━━━━━━━━━━━━━━╮"
echo " ┈┣ 🚩รหัสผ่านอย่างน้อย 1 ตัวอักษร"
echo " ┈╰━━━━━━━━━━━━━━━━━╯"
  else
  #บันทึกรหัสผ่านใหม่
  cat > /usr/bin/Passwd << KGUZA
$PasswdEnter
KGUZA
fi
cd
.chek
exit
else

#รหัสผ่านผิดตอนรันแรกๆ
clear
cr
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━╮ "
red " ┈┣ 🚫 รหัสผิดแล้วมั้งอย่ามั่วเดี๋ยวตบคว่ำ 🚫  "
echo " ┈╰━━━━━━━━━━━━━━━━━━━━━━╯ "
echo " "
exit
fi
}

if [[ -e /usr/bin/cr ]] ; then
clear
else
cd /usr/bin
wget -qO cr "https://kguza.net/scrip/u-d/openvpn/menu/cr.sh"
chmod +x cr
fi
if [ -e /usr/bin/Passwd ]; then
clear
else
if [[ $pass = "" ]]; then
# ไม่ใส่รหัสตอนรัน Script
clear
cr
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━╮"
echo " ┈┣  🆕️ ตัวอย่างการใส่รหัสผ่าน 🆕️ "
echo " ┈╰━━┳━━━━━━━━┳━━━━━━━━━━╯"
echo " ┈╭━━┻━━━━━━━━┻━━━━━━━━━━━━━━╮"
echo " ┈┣  wget -O install.sh "
echo " ┈┣  https://kguza.net/scrip/u-d/install.sh  "
echo " ┈┣  bash install.sh ใส่รหัสตรงนี้   "
echo " ┈╰━━━━━━━━━━━━━━━━━━━━━━━━━━╯"
echo ""
exit
fi
fi
#วิธีเพิ่มรหัส | เพิ่ม | เพิ่ม | เพิ่มใด้ยาวๆ )
case "$pass" in
  G )
  echo 'echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━╮
 ┈┣ 🔖🔖 สคริป Admin ไม่มีหมดอายุ 🔖🔖
 ┈╰━━━━━━━━━━━━━━━━━━━━━━╯  
 "' > /usr/bin/exp
 chmod +x /usr/bin/exp
if [ -e /usr/bin/Passwd ]; then
  if [ -e /etc/openvpn/.1194 ]; then
mv /etc/openvpn/.1194 /etc/openvpn/1194.conf
service openvpn restart -q > /dev/null 2>&1
fi
if [ -e /usr/bin/screenfetch ]; then
clear
screenfetch
fi
 exit
 else
scrip
exit
fi
;;
  kk )
if [[ "$exp" -gt "190214" ]]; then
echo 'echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━╮
 ┈┣ 🔘 สคริปหมดอายุวันที่ 14/02/19
 ┈╰━━━━━━━━━━━━━━━━━━━━━━╯  
 "' > /usr/bin/exp
 chmod +x /usr/bin/exp
exppp
else
echo 'echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━╮
 ┈┣ 🔘 สคริปใช้งานใด้ถึงวันที่ 14/02/19
 ┈╰━━━━━━━━━━━━━━━━━━━━━━╯  
 "' > /usr/bin/exp
 chmod +x /usr/bin/exp
if [ -e /usr/bin/Passwd ]; then
  if [ -e /etc/openvpn/.1194 ]; then
mv /etc/openvpn/.1194 /etc/openvpn/1194.conf
service openvpn restart -q > /dev/null 2>&1
fi
 if [ -e /usr/bin/screenfetch ]; then
clear
screenfetch
fi
 exit
 else
 scrip
exit
fi
fi
;;
kguza-scrip )
if [[ "$exp" -gt "210731" ]]; then
echo 'echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━╮
 ┈┣ 🔘 สคริปหมดอายุวันที่ 31 กรกฎาคม 2021
 ┈╰━━━━━━━━━━━━━━━━━━━━━━╯  
 "' > /usr/bin/exp
 chmod +x /usr/bin/exp
exppp
else
echo 'echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━╮
 ┈┣ 🔘 สคริปใช้งานใด้ถึงวันที่ 31 กรกฎาคม 2021
 ┈╰━━━━━━━━━━━━━━━━━━━━━━╯  
 "' > /usr/bin/exp
 chmod +x /usr/bin/exp
if [ -e /usr/bin/Passwd ]; then
  if [ -e /etc/openvpn/.1194 ]; then
mv /etc/openvpn/.1194 /etc/openvpn/1194.conf
service openvpn restart -q > /dev/null 2>&1
fi
 if [ -e /usr/bin/screenfetch ]; then
clear
screenfetch
fi
 exit
 else
 scrip
exit
fi
fi
;;
$pass )
exppp
;;
esac

#<BODY text='ffffff'>
