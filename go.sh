let "s=0"
sudo apt-get install fim
if [[ -z `whereis fim` ]]
then exit
else
echo "Введите названия сигналов"
sleep 1
for i in $(seq 9);
do
fim $i.jpg &
jpg_pid=$!
sleep 1
kill $jpg_pid
read answer
key=`head -n ${i} keys.txt | grep -i "\b${answer}\b"`
if [[ !(-z $key) && !(-z $answer)]]
then let "s++"
fi
let "i++"
done
echo "У вас $s верных ответов из 9"
sudo apt-get remove fim
fi
