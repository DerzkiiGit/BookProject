DROP TABLE IF EXISTS books;
CREATE TABLE books(
  ID BIGINT(20) NOT NULL AUTO_INCREMENT UNIQUE,
  title VARCHAR(100) NOT NULL ,
  description VARCHAR(255) NOT NULL ,
  author VARCHAR(100) NOT NULL ,
  isdn VARCHAR(20) NOT NULL ,
  printYear INT NOT NULL ,
  readAlready BIT NOT NULL,
  PRIMARY KEY (ID)
);
COMMIT;
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 1', 'description 1', 'author 1', '000001',1996,TRUE);
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 2', 'description 2', 'author 2', '000002',1997,FALSE );
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 3', 'description 3', 'author 3', '000003',1998,TRUE);
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 4', 'description 4', 'author 4', '000004',1999,FALSE );
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 5', 'description 5', 'author 5', '000005',2000,TRUE);
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 6', 'description 6', 'author 6', '000006',2001,FALSE );
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 7', 'description 7', 'author 7', '000007',2002,TRUE);
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 8', 'description 8', 'author 8', '000008',2003,FALSE );
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 9', 'description 9', 'author 9', '000009',2004,TRUE);
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 10', 'description 10', 'author 10', '000010',2005,FALSE );
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 11', 'description 11', 'author 11', '000011',2006,TRUE);
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 12', 'description 12', 'author 12', '000012',2007,FALSE );
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 13', 'description 13', 'author 13', '000013',2008,TRUE);
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 14', 'description 14', 'author 14', '000014',2009,FALSE );
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 15', 'description 15', 'author 15', '000015',2010,FALSE );
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 16', 'description 16', 'author 16', '000016',2011,FALSE );
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 17', 'description 17', 'author 17', '000017',2012,TRUE);
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 18', 'description 18', 'author 18', '000018',2013,FALSE );
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 19', 'description 19', 'author 19', '000019',2014,TRUE);
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 20', 'description 20', 'author 20', '000020',2015,FALSE );
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 21', 'description 21', 'author 21', '000021',2016,TRUE);
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 22', 'description 22', 'author 22', '000022',2017,FALSE );
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 23', 'description 23', 'author 23', '000023',2018,TRUE);
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 24', 'description 24', 'author 24', '000024',2019,FALSE );
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 25', 'description 25', 'author 25', '000025',2020,TRUE);
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 26', 'description 26', 'author 26', '000026',2021,FALSE );
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 27', 'description 27', 'author 27', '000027',2022,TRUE);
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 28', 'description 28', 'author 28', '000028',2023,FALSE );
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 29', 'description 29', 'author 29', '000029',2024,TRUE);
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 30', 'description 30', 'author 30', '000030',2025,FALSE );
INSERT INTO books (title,description,author,isdn,printYear,readAlready)
VALUES ('book title 31', 'description 31', 'author 31', '000031',2026,TRUE);

COMMIT;