CREATE DATABASE Movie_Store
GO

USE Movie_Store
GO

-- a),b) design of the tables and unique id
CREATE TABLE members(
	id					INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	member_name			NCHAR(30),
	member_address		NCHAR(30),
	contact_info		NCHAR(30),
	join_date			DATETIME,
	member_status		NCHAR(30)
)
GO

CREATE TABLE movies(
	id					INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	movie_name			NCHAR(30),
	genre				NCHAR(30),
	movie_year			NCHAR(30),
	movie_status		NCHAR(30)
)
GO

CREATE TABLE loans(
	id_member				INT NOT NULL FOREIGN KEY REFERENCES members(id),
	id_movie				INT NOT NULL FOREIGN KEY REFERENCES movies(id),
	loan_date				DATETIME,
	return_date				DATETIME,
	CONSTRAINT				PK_sifre PRIMARY KEY(id_member,id_movie)
)
GO

-- table inserts
INSERT INTO movies VALUES('The Departed','Action','1997','Good');
INSERT INTO movies VALUES('Conan','Action','1998','Good');
INSERT INTO movies VALUES('2001 A Space Oddysey','Sci-Fi','1986','Mint Condition');
INSERT INTO movies VALUES('Godfather','Drama','1972','Great');
INSERT INTO movies VALUES('The Departed','Action','1997','Good');
INSERT INTO movies VALUES('Conan','Action','1998','Good');
INSERT INTO movies VALUES('2001 A Space Oddysey','Sci-Fi','1986','Mint Condition');
INSERT INTO movies VALUES('Godfather','Drama','1972','Great');
INSERT INTO movies VALUES('The Departed','Action','1997','Good');
INSERT INTO movies VALUES('Conan','Action','1998','Good');
INSERT INTO movies VALUES('2001 A Space Oddysey','Sci-Fi','1986','Mint Condition');
INSERT INTO movies VALUES('Godfather','Drama','1972','Great');
INSERT INTO movies VALUES('The Departed','Action','1997','Good');
INSERT INTO movies VALUES('Conan','Action','1998','Good');
INSERT INTO movies VALUES('2001 A Space Oddysey','Sci-Fi','1986','Mint Condition');
INSERT INTO movies VALUES('Godfather','Drama','1972','Great');
INSERT INTO movies VALUES('The Departed','Action','1997','Good');
INSERT INTO movies VALUES('Conan','Action','1998','Good');
INSERT INTO movies VALUES('2001 A Space Oddysey','Sci-Fi','1986','Mint Condition');
INSERT INTO movies VALUES('Godfather','Drama','1972','Great');
INSERT INTO movies VALUES('The Departed','Action','1997','Good');
INSERT INTO movies VALUES('Conan','Action','1998','Good');
INSERT INTO movies VALUES('2001 A Space Oddysey','Sci-Fi','1986','Mint Condition');
INSERT INTO movies VALUES('Godfather','Drama','1972','Great');
INSERT INTO movies VALUES('The Departed','Action','1997','Good');
INSERT INTO movies VALUES('Conan','Action','1998','Good');
INSERT INTO movies VALUES('2001 A Space Oddysey','Sci-Fi','1986','Mint Condition');
INSERT INTO movies VALUES('Godfather','Drama','1972','Great');
INSERT INTO movies VALUES('The Departed','Action','1997','Good');
INSERT INTO movies VALUES('Conan','Action','1998','Good');
INSERT INTO movies VALUES('2001 A Space Oddysey','Sci-Fi','1986','Mint Condition');
INSERT INTO movies VALUES('Godfather','Drama','1972','Great');
INSERT INTO movies VALUES('The Departed','Action','1997','Good');
INSERT INTO movies VALUES('Conan','Action','1998','Good');
INSERT INTO movies VALUES('2001 A Space Oddysey','Sci-Fi','1986','Mint Condition');
INSERT INTO movies VALUES('Godfather','Drama','1972','Great');
INSERT INTO movies VALUES('The Departed','Action','1997','Good');
INSERT INTO movies VALUES('Conan','Action','1998','Good');
INSERT INTO movies VALUES('2001 A Space Oddysey','Sci-Fi','1986','Mint Condition');
INSERT INTO movies VALUES('Godfather','Drama','1972','Great');
INSERT INTO movies VALUES('The Departed','Action','1997','Good');
INSERT INTO movies VALUES('Conan','Action','1998','Good');
INSERT INTO movies VALUES('2001 A Space Oddysey','Sci-Fi','1986','Mint Condition');
INSERT INTO movies VALUES('Godfather','Drama','1972','Great');
INSERT INTO movies VALUES('The Departed','Action','1997','Good');
INSERT INTO movies VALUES('Conan','Action','1998','Good');
INSERT INTO movies VALUES('2001 A Space Oddysey','Sci-Fi','1986','Mint Condition');
INSERT INTO movies VALUES('Godfather','Drama','1972','Great');
INSERT INTO movies VALUES('The Departed','Action','1997','Good');
INSERT INTO movies VALUES('Conan','Action','1998','Good');
INSERT INTO movies VALUES('2001 A Space Oddysey','Sci-Fi','1986','Mint Condition');
INSERT INTO movies VALUES('Godfather','Drama','1972','Great');
INSERT INTO movies VALUES('2001 A Space Oddysey','Sci-Fi','1986','Mint Condition');
INSERT INTO movies VALUES('Godfather','Drama','1972','Great');


INSERT INTO members VALUES('Marin','Mala Kopanica','0917316969','2019-03-05','Subscribed');
INSERT INTO members VALUES('Petar','Mala Kopanica','0935743832','2019-04-05','Subscribed');

INSERT INTO loans VALUES(1,1,'2019-03-05','2019-03-06');
INSERT INTO loans VALUES(2,2,'2019-03-06','2019-03-06');
INSERT INTO loans VALUES(1,3,'2019-03-07','2019-03-06');
INSERT INTO loans VALUES(1,4,'2019-03-08','2019-03-06');
INSERT INTO loans VALUES(1,5,'2019-03-05','2019-03-06');
INSERT INTO loans VALUES(2,6,'2019-03-06','2019-03-06');
INSERT INTO loans VALUES(1,7,'2019-03-07','2019-03-06');
INSERT INTO loans VALUES(1,8,'2019-03-08','2019-03-06');
INSERT INTO loans VALUES(1,9,'2019-03-05','2019-03-06');
INSERT INTO loans VALUES(1,10,'2019-03-06','2019-03-06');
INSERT INTO loans VALUES(1,11,'2019-03-07','2019-03-06');
INSERT INTO loans VALUES(1,12,'2019-03-08','2019-03-06');
INSERT INTO loans VALUES(1,13,'2019-03-05','2019-03-06');
INSERT INTO loans VALUES(1,14,'2019-03-06','2019-03-06');
INSERT INTO loans VALUES(1,15,'2019-03-07','2019-03-06');
INSERT INTO loans VALUES(1,16,'2019-03-08','2019-03-06');
INSERT INTO loans VALUES(1,17,'2019-03-05','2019-03-06');
INSERT INTO loans VALUES(1,18,'2019-03-06','2019-03-06');
INSERT INTO loans VALUES(1,19,'2019-03-07','2019-03-06');
INSERT INTO loans VALUES(1,20,'2019-03-08','2019-03-06');
INSERT INTO loans VALUES(1,21,'2019-03-05','2019-03-06');
INSERT INTO loans VALUES(1,22,'2019-03-06','2019-03-06');
INSERT INTO loans VALUES(1,23,'2019-03-07','2019-03-06');
INSERT INTO loans VALUES(1,24,'2019-03-08','2019-03-06');
INSERT INTO loans VALUES(1,25,'2019-03-05','2019-03-06');
INSERT INTO loans VALUES(1,26,'2019-03-06','2019-03-06');
INSERT INTO loans VALUES(1,27,'2019-03-07','2019-03-06');
INSERT INTO loans VALUES(1,28,'2019-03-08','2019-03-06');
INSERT INTO loans VALUES(1,29,'2019-03-05','2019-03-06');
INSERT INTO loans VALUES(1,30,'2019-03-06','2019-03-06');
INSERT INTO loans VALUES(1,31,'2019-03-07','2019-03-06');
INSERT INTO loans VALUES(1,32,'2019-03-08','2019-03-06');
INSERT INTO loans VALUES(1,33,'2019-03-05','2019-03-06');
INSERT INTO loans VALUES(1,34,'2019-03-06','2019-03-06');
INSERT INTO loans VALUES(1,35,'2019-03-07','2019-03-06');
INSERT INTO loans VALUES(1,36,'2019-03-08','2019-03-06');
INSERT INTO loans VALUES(1,37,'2019-03-05','2019-03-06');
INSERT INTO loans VALUES(1,38,'2019-03-06','2019-03-06');
INSERT INTO loans VALUES(1,39,'2019-03-07','2019-03-06');
INSERT INTO loans VALUES(1,40,'2019-03-08','2019-03-06');
INSERT INTO loans VALUES(1,41,'2019-03-05','2019-03-06');
INSERT INTO loans VALUES(1,42,'2019-03-06','2019-03-06');
INSERT INTO loans VALUES(1,43,'2019-03-07','2019-03-06');
INSERT INTO loans VALUES(1,44,'2019-03-08','2019-03-06');
INSERT INTO loans VALUES(1,45,'2019-03-05','2019-03-06');
INSERT INTO loans VALUES(1,46,'2019-03-06','2019-03-06');
INSERT INTO loans VALUES(1,47,'2019-03-07','2019-03-06');
INSERT INTO loans VALUES(1,48,'2019-03-08','2019-03-06');
INSERT INTO loans VALUES(1,49,'2019-03-05','2019-03-06');
INSERT INTO loans VALUES(1,50,'2019-03-06','2019-03-06');
INSERT INTO loans VALUES(1,51,'2019-03-07','2019-03-06');
INSERT INTO loans VALUES(1,52,'2019-03-08','2019-03-06');

-- c) action movie select
Select * from movies Where movies.genre IN ('action')

-- c) all loaned action movies
Select * from movies
inner JOIN loans ON loans.id_movie=movies.id
Where movies.genre IN ('action')

-- c) update classic movies
UPDATE movies SET genre = 'Classic' WHERE movie_year < 1980

-- c) writing into another table called loan_history while deleting from loans
INSERT INTO loan_history
SELECT id_member,id_movie,return_date,loan_date
FROM loans
DELETE loans 
FROM loans l1
JOIN loan_history l2 ON l1.id_movie = l2.id_movie;


-- c) update on all members to frequent if they have more than 50 loans
UPDATE
    members
SET
    members.member_status = 'Frequent'
FROM
    members AS m1
    INNER JOIN (
		Select m.id,l.id_member 
		From members m inner join loan_history l 
		On l.id_member=m.id 
		Where m.id=l.id_member
		Group by m.id,l.id_member  
		Having count(l.id_member) > 50 
	) m2 
	On m1.id=m2.id
