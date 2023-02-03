flash_pic(){
fim "img/$1.jpg" &
jpg_pid=$!
sleep 1
kill $jpg_pid
}
sudo apt-get install fim
[[ -z `whereis fim` ]] && exit
echo "Введите названия сигналов:"
sleep 1
correct=0
for i in $(seq 9);
do
flash_pic "$i"	
read answer
answer=$(echo "$answer" | sed -e "s/^[[:space:]]*//")
key=`head -n ${i} keys.txt | grep -i "\b${answer}\b"`
[[ !(-z $key) && !(-z $answer)]] && ((correct=correct+1))
done
result(){
echo "У вас $correct верны$1 ответ$2 из 9"
}
case $correct in
2|3|4) result "x" "a";;
1) result "й" "";;
*) result "х" "ов"
esac	
