SELECT w2.id
FROM weather w1
JOIN weather w2 
  ON w2.recordDate = w1.recordDate + INTERVAL '1 day'
WHERE w2.temperature > w1.temperature;
