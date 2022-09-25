for i in /data/data/com.termux/files/usr/etc/profile.d/*.sh; do
        if [ -r $i ]; then
                . $i
        fi
done
unset i

# Source etc/bash.bashrc and ~/.bashrc also for interactive bash login shells:
if [ "$BASH" ]; then
        if [[ "$-" == *"i"* ]]; then
                if [ -r /data/data/com.termux/files/usr/etc/bash.bashrc ]; then
                        . /data/data/com.termux/files/usr/etc/bash.bashrc
                fi
                if [ -r /data/data/com.termux/files/home/.bashrc ]; then
                        . /data/data/com.termux/files/home/.bashrc
                fi
        fi
fi

clear

# Password
qu="Selamat Datang"
       read -p "[+] masukkan password : " pass
       sleep 1
echo $qu
sleep 1
#kondisi
if [ $pass = '060906' ]
         then
         echo "[+] Password Benar ✅"
         else
         echo "[+] Password Salah ❌"
         sleep 3
fi
# config
echo -n "masukkan nama : "
read nama;
echo -n "No WA : "
read WA;
sleep 2

clear

# HEADER
  toilet -f standard "WARNING!" -F gay
toilet -f standard "ERROR SYSTEM" -F gay

# BODY
echo "////////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\"
                  echo " author by $nama "
               echo " WA: +62 $WA "
    echo " GitHub: https://github.com/$nama "
echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\////////////////////////////"

neofetch

date | lolcat

command_not_found_handle() {
        /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
}
PS1='\e[1;33m$nama@noob \e[1;30m \e[1;32m \e[1;33m \e[1;31m   ↳'
