#!/bin/bash

LOGFILE=~/MSSV_HoTen_Linux/logs/hethong.log

{
echo "===== THONG TIN HE THONG ====="

echo "Nguoi dung: $(whoami)"
echo "Ten may: $(hostname)"
echo "Ngay gio hien tai: $(date)"
echo "Linux Kernel: $(uname -r)"

echo
echo "===== BO NHO RAM ====="
free -h

echo
echo "===== DUNG LUONG DIA ====="
df -h

echo
echo "===== KIEM TRA MANG ====="

ping -c 4 google.com.vn > /dev/null 2>&1

if [ $? -eq 0 ]
then
    echo "Co ket noi mang"
else
    echo "Khong xac nhan duoc ket noi mang"
fi

} | tee "$LOGFILE"
