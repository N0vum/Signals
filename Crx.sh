# Показать картинку на секунду
show_pic() {
    fim "$1.jpg" &
    jpg_pid=$!
    sleep 1
    kill $jpg_pid
}


sudo apt-get install fim
[ -z $(which fim) ] && exit


echo "Введите названия сигналов"
sleep 1

# счётчик очков, в начале 0
correct=0

for i in $(seq 9); do
    # показываем картинку
    show_pic "$i"

    # берём правильный ответ из файла, с i-той строки, отрезаем ненужные символы перевода строки
    right_answer="$(sed -n ${i}p keys.txt | tr -d '\n' | tr -d '\r')"

    # запрашиваем ответ юзера
    read answer

    # если совпадает, начисляем очко
    [ "$answer" = "$right_answer" ] && correct=$(($correct+1))
done

echo "Вы дали $correct правильных ответов"
