NAME=Backup_$(date +%Y_%m_%d_%H_%M)
mkdir /mnt/DATA/Backups/$NAME
cp -r /home/erik/ /mnt/DATA/Backups/$NAME

