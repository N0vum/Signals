Моя первая попытка написать bash-скрипт. Не судите строго, лучше помогите советом))
Задача скрипта: начислить по 1-му баллу за правильный ответ, введенный (на русском) после показа картинки.
Картинки-вопросы идут не рэндомно, а по порядку.
В keys.txt по идее должны быть перечислены регулярки для сверки ответов.
Проблемы:
1. Прога не работает - баллы не начисляются)) 
Если писать в скрипте проверки if [ answer == "внимание" ] ... ,
 то все работает, но мне хочется понять, как брать ответы из файла.
2. Вначале запускается устновка утилиты fim от суперпользователя, вконце - удаляется. Выглядит нее ооочень...)  

