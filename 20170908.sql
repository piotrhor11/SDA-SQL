### All with id starting with 1 and having 2 digits
#SELECT * FROM quiz.questions WHERE id like '1_';

### Everything with "Destructor" in the questions
#SELECT question FROM quiz.questions WHERE question like '%Destruktor%';

### Questions and correct answers
SELECT question, CASE correctAnswer
WHEN 'a' THEN answera
WHEN 'b' THEN answerb
WHEN 'c' THEN answerc
WHEN 'd' THEN answerd
ELSE correctAnswer
END
FROM quiz.questions; 

### Task xx from Slide 26 from SQL presentation	// do poprawy
#SELECT * FROM quiz.questions WHERE id BETWEEN '6' AND '10';

### Task from slide 26???
#SELECT question, year FROM quiz.questions WHERE year>=2010 AND year <=2012 ORDER by year DESC;