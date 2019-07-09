   A1 = load '/projects/apache-pig-sample/data.txt' using PigStorage(' ') AS (f1:int, f2:chararray, f3:chararray);
   A2 = FOREACH A1 GENERATE f1, f3;
   A3 = FILTER A2 BY f1 >= 3;
   A4 = DISTINCT A3;
   SPLIT A4 INTO B1 IF f1<7, B2 OTHERWISE;
   C = UNION B1, B2;