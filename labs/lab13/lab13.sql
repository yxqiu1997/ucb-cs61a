.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet FROM students WHERE color = "blue" AND pet = "dog";

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song FROM students WHERE color = "blue" AND pet = "dog";


CREATE TABLE matchmaker AS
  SELECT s1.pet, s1.song, s1.color, s2.color FROM students AS s1, students AS s2
  WHERE s1.pet = s2.pet AND s1.song = s2.song AND s1.time < s2.time;


CREATE TABLE sevens AS
  SELECT s.seven FROM students AS s, numbers AS n
  WHERE s.time = n.time AND n."7" = "True" AND s.number = 7;


CREATE TABLE favpets AS
  SELECT pet, COUNT(*) AS cnt FROM students
  GROUP BY pet ORDER BY cnt DESC LIMIT 10;


CREATE TABLE dog AS
  SELECT pet, COUNT(*) as cnt FROM students
  WHERE pet = "dog";


CREATE TABLE bluedog_agg AS
  SELECT song, COUNT(*) AS cnt FROM bluedog_songs
  GROUP BY song ORDER BY cnt DESC;


CREATE TABLE instructor_obedience AS
  SELECT seven, instructor, COUNT(*) FROM students
  WHERE seven = "7" GROUP BY instructor;

