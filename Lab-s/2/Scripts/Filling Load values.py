import numpy.random as rnd

f = open(file='Load values.txt', mode="w")

groups_amount = 16
groups_start = 7

professor_lessons_amount = 84

for group_number in range(groups_amount):

    # Here we are going through groups

    for semester_number in range(6):
            
            # Here we are going through semesters (There are 6 for simplify)

            for week_day_number in range(5):

                # Here we are going through week days 
                # (They study 5 days in week for simplify)

                unavailable_lesson_numbers = []

                # Selecting lessons number in some week day
                for lessons in range(rnd.randint(4)):

                    # Here we are going through lessons in some week day

                    # Selecting lesson number 
                    # (Example: 1 - first lesson in day by time; 2 - second; ...) 
                    lesson_number = rnd.randint(6)

                    while (lesson_number in unavailable_lesson_numbers):
                         
                        lesson_number = rnd.randint(6)

                    unavailable_lesson_numbers.append(lesson_number)

                    f.write(
                        '( '
                        + 'DEFAULT, '
                        + f'{week_day_number + 1}, '
                        + f'{lesson_number + 1}, '
                        + f'{semester_number + 1}, '
                        + f'{rnd.randint(professor_lessons_amount) + 1}, '
                        + f'{group_number + groups_start} '
                        + '),\n')