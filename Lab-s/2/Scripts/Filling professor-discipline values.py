import numpy.random as rnd

f = open(file='Professor-lessons values.txt', mode="w")

teachers_start = 1
lessons_start = 15

teachers_amount = 14
lessons_amount = 42 * 2

lessons_for_one_teacher = lessons_amount / teachers_amount

for i in range(teachers_amount):

    for j in range(int(lessons_for_one_teacher)):
    
        f.write(
            '( '
            + 'DEFAULT, '
            + f'{teachers_start}, '
            + f'{lessons_start} '
            + '),\n')
            
        lessons_start += 1

    teachers_start += 1
    
if (int(lessons_for_one_teacher) * teachers_amount != lessons_amount):

    print('There are some lessons that are not taken by teachers!')