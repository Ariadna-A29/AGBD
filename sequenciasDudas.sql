1_ SELECT FirstName, LastName FROM employees
   ORDER by LastName ASC, Firstname A

2_ SELECT * FROM albums  
   JOIN tracks 
   WHERE Title like "Big Ones%"
   ORDER by Milliseconds DESC

3_ SELECT * FROM invoice_items 
   JOIN tracks 
   ORDER by UnitPrice ASC LIMIT 10

4_ SELECT tracks.Name, UnitPrice FROM tracks
  JOIN genres ON genres.GenreId = tracks.GenreId 
  WHERE UnitPrice like "%0.99" 


5_ SELECT tracks.Name,Milliseconds FROM tracks
   JOIN genres ON genres.GenreId = tracks.GenreId
   JOIN artists ON artists.Name 
   ORDER BY Milliseconds ASC LIMIT 20 

6_ SELECT e.LastName, e.Title, m.LastName, COUNT(c.CustomerId)
   FROM employees e
   LEFT JOIN employees m ON e.ReportsTo = m.EmployeeId
   LEFT JOIN customers c ON e.EmployeeId = c.SupportRepId
   GROUP BY e.EmployeeId

7_ SELECT e.FirstName, e.LastName, c.FirstName, c.LastName
   FROM employees e 
   customers c ON e.EmployeeId = c.SupportRepId  

8_ SELECT c.FirstName, c.LastName,c.Address, I.InvoiceId
   FROM customers c
   JOIN invoices i ON c.CustomerId = i.CustomerId

9_ SELECT g.name, COUNT(t.TrackId)
   FROM genres g 
   JOIN Tracks t ON g.GenreId = t.GenreId
   GROUP BY g.name
   ORDER BY 2 DESC

10_ SELECT c.FirstName, art.name
   FROM customers c
   JOIN invoices i ON c.CustomerId = i.CustomerId
   JOIN invoice_items ii ON i.InvoiceId = ii.InvoiceId   
   JOIN tracks t ON ii.TrackId = t.TrackId
   JOIN albums alb ON t.AlbumId = alb.AlbumId
   JOIN artists art ON alb.ArtistId = art.ArtistId
   ORDER BY c.FirstName

11_ SELECT c.FirstName, c.City, t.name, g.name
    FROM customers c 
    JOIN invoices i ON c.CustomerId = i.CustomerId
    JOIN invoice_items ii ON i.InvoiceId = ii.InvoiceId
    JOIN tracks t ON ii.TrackId = t.TrackId
    genres g ON t.GenreId = g.GenreId

12_