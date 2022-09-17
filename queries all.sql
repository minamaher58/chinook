-- SELECT BillingCountry, COUNT(*) Invoices
-- FROM Invoice
-- GROUP BY BillingCountry
-- ORDER BY Invoices DESC;

-- Which city has the best customers
-- SELECT c.City City_name, SUM(i.total) total_spent
-- FROM Customer c
-- JOIN Invoice i ON c.CustomerId = i.CustomerId
-- GROUP BY City_name
-- ORDER BY total_spent DESC
-- LIMIT 5;

-- SELECT c.FirstName customer_name, SUM(il.UnitPrice*il.Quantity) total_spent
-- FROM Customer c
-- JOIN Invoice i ON c.CustomerId = i.CustomerId
-- JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
-- GROUP BY c.CustomerId
-- ORDER BY total_spent DESC
-- LIMIT 1;

-- 
-- SELECT t.Name TrackName, sum(il.Quantity) TracksSold
-- FROM Track t
-- JOIN InvoiceLine il ON il.TrackId = t.TrackId
-- GROUP BY t.TrackId
-- ORDER BY TracksSold DESC
-- LIMIT 10;

-- ******8which albums have the biggest number of tracks*****
-- SELECT a.Title Album_Name,
--        COUNT(*) num_of_tracks
-- FROM Album a
-- JOIN Track t ON a.AlbumId = t.AlbumId
-- GROUP BY a.AlbumId
-- ORDER BY num_of_tracks DESC
-- LIMIT 10;



-- total spend per each genre
-- SELECT g.Name genre, Sum(il.UnitPrice * il.Quantity) total_usd
-- FROM Genre g
-- JOIN Track t ON g.GenreId = t.GenreId
-- JOIN InvoiceLine il ON il.TrackId = t.TrackId
-- GROUP BY g.GenreId
-- ORDER BY total_usd DESC;

--Which media type BEST selling*******
-- SELECT m.Name mediaType, SUM(il.Quantity) tracks_sold
-- FROM MediaType m
-- JOIN Track t ON m.MediaTypeId = t.MediaTypeId
-- JOIN InvoiceLine il ON t.TrackId = il.TrackId
-- GROUP BY 1
-- ORDER BY 2;


--****playlist length***
-- SELECT p.Name playlist, SUM(t.Milliseconds)/60000 Minutes
-- FROM Playlist p
-- JOIN PlaylistTrack pt ON pt.PlaylistId = p.PlaylistId
-- JOIN Track t ON t.TrackId = pt.TrackId
-- GROUP BY Playlist
-- ORDER BY Minutes DESC;

--Question set 2-------
--question 1  
-- SELECT DISTINCT c.Email, c.FirstName, c.LastName, g.Name
-- FROM Customer c
-- JOIN Invoice i ON i.CustomerId = c.CustomerId
-- JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
-- JOIN Track t ON t.TrackId = il.TrackId
-- JOIN Genre g ON g.GenreId = t.GenreId
-- WHERE g.Name = 'Rock'
-- ORDER BY Email;

-- Which cOUNTRY has the best customers
-- SELECT c.Country country_name, SUM(i.total) total_spent
-- FROM Customer c
-- JOIN Invoice i ON c.CustomerId = i.CustomerId
-- GROUP BY country_name
-- ORDER BY total_spent DESC
-- LIMIT 5;

-- How many tracks per each Genre***********
-- SELECT g.Name genre, COUNT(*) Tracks
-- FROM Genre g
-- JOIN Track t ON g.GenreId = t.GenreId
-- GROUP BY g.GenreId
-- ORDER BY Tracks DESC