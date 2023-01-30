let "s=0"
let "i=1"
sudo apt-get install fim
if [[ -z `whereis fim` ]] 
then exit
else
echo "Введите названия сигналов"
sleep 1
while [[ $i -le 9 ]]
do
fim $i.jpg &
jpg_pid=$!
sleep 1
kill $jpg_pid
read answer
for key in `cat keys.txt`
do
if [[ key==answer ]]
then let "s++"
fi
done
let "i++"
done
echo $s
sudo apt-get remove fim
fi
	


