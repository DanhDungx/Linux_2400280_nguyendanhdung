#!/bin/bash

DATA_DIR=~/2400280_nguyendanhdung_Linux/data
BACKUP_DIR=~/2400280_nguyendanhdung_Linux/backup
LOGFILE=~/2400280_nguyendanhdung_Linux/logs/backup.log

if [ ! -d "$DATA_DIR" ]
then
    echo "Thu muc data khong ton tai!"

    echo "$(date '+%Y-%m-%d %H:%M:%S') | Loi | data khong ton tai" >> "$LOGFILE"

    exit 1
fi

filename="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

tar -czf "$BACKUP_DIR/$filename" -C ~/MSSV_HoTen_Linux data

if [ $? -eq 0 ]
then
    echo "Sao luu thanh cong!"

    echo "$(date '+%Y-%m-%d %H:%M:%S') | $filename | Thanh cong" >> "$LOGFILE"
else
    echo "Sao luu that bai!"

    echo "$(date '+%Y-%m-%d %H:%M:%S') | $filename | That bai" >> "$LOGFILE"
fi

echo
echo "===== DANH SACH FILE SAO LUU ====="
ls -lh "$BACKUP_DIR"
