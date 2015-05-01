NAME=Backup_$(date +%Y%m%d%s)
mkdir /mnt/DATA/Backups/$NAME
cp -r /home/erik/ /mnt/DATA/Backups/$NAME

