-- распределение преподавателей по заданным диапазонам стажа с указанием количества часов;
-- distribution of teachers according to the given ranges of experience with an indication of the number of hours;

SELECT "Patronymic", "First name", "Post", "Work experience"
FROM "Professor"

WHERE "Work experience" BETWEEN 16 AND 32