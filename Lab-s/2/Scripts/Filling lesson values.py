disciplines = [
  "Математика",
  "Физика",
  "Химия",
  "Биология",
  "Информатика",
  "Программирование",
  "Экономика",
  "Менеджмент",
  "Финансы",
  "Маркетинг",
  "Психология",
  "Социология",
  "Философия",
  "История",
  "Политология",
  "Право",
  "Лингвистика",
  "Литературоведение",
  "Иностранный язык",
  "Физическая культура",
  "География",
  "Геология",
  "Астрономия",
  "Архитектура",
  "Дизайн",
  "Искусство",
  "Музыка",
  "Театр",
  "Кино",
  "Спорт",
  "Биохимия",
  "Генетика",
  "Микробиология",
  "Медицина",
  "Педагогика",
  "Психология развития",
  "Социальная работа",
  "Туризм",
  "Гостиничный бизнес",
  "Журналистика",
  "Реклама",
  "Связи с общественностью"
]

import numpy.random as rnd

f = open(file='Lessons values.txt', mode="w")

for i in range(0, len(disciplines)):

    f.write(
        '( '
        + 'DEFAULT, '
        + f"'{disciplines[i]}', "
        + 'False, '
        + f'{rnd.randint(16, 128)} '
        + '),\n')
        
    f.write(
        '( '
        + 'DEFAULT, '
        + f"'{disciplines[i]}', "
        + 'True, '
        + f'{rnd.randint(16, 128)} '
        + '),\n')