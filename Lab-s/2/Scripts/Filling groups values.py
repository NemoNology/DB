gruppy = [
    "ИСТ",  # Информационные системы и технологии
    "МАТ",  # Математика
    "ФИЗ",  # Физика
    "ХИМ",  # Химия
    "БИО",  # Биология
    "ГЕО",  # География
    "ЭКО",  # Экономика
    "ПРА",  # Право
    "СОЦ",  # Социология
    "ПСИ",  # Психология
    "ФИЛ",  # Философия
    "ЛИН",  # Лингвистика
    "ИСК",  # История искусств
    "МЕД",  # Медицина
    "ПЕД",  # Педагогика
    "СПО"   # Спорт
]

import numpy.random as rnd

f = open(file='Groups values.txt', mode="w")

for i in range(0, len(gruppy)):

    f.write(
        '( '
        + 'DEFAULT, '
        + f"'{gruppy[i]}-{rnd.randint(14, 20)}' ),\n")