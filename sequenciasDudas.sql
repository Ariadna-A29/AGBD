1_ SELECT FirstName, LastName FROM employees
   ORDER by LastName ASC, Firstname A

2_ SELECT * FROM albums  
   JOIN tracks 
   WHERE Title like "Big Ones%"
   ORDER by Milliseconds DESC

3_ SELECT * FROM invoice_items 
   JOIN tracks 
   ORDER by UnitPrice ASC LIMIT 10

4_SELECT tracks.Name, UnitPrice FROM tracks
  JOIN genres ON genres.GenreId = tracks.GenreId 
  WHERE UnitPrice like "%0.99" 


5_SELECT tracks.Name,Milliseconds FROM tracks
  JOIN genres ON genres.GenreId = tracks.GenreId
  JOIN artists ON artists.Name 
  ORDER BY Milliseconds ASC LIMIT 20 

6_SELECT employees.LastName, Title FROM employees
  JOIN employees ON 