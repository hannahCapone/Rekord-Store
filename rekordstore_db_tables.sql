CREATE TABLE Album (
    albumCode INT, 
    albumTitle VARCHAR(100) NOT NULL,
    artist VARCHAR(100) NOT NULL, 
    yearOfRelease YEAR,
    CONSTRAINT A_ACODE_PK PRIMARY KEY (albumCode)
);

CREATE TABLE Album_Copy (
    copyCode INT,
    albumCode INT NOT NULL,
    purchaseDate DATE,
    conditions VARCHAR(50) NOT NULL,
    CONSTRAINT AC_CCODE_PK PRIMARY KEY (copyCode),
    CONSTRAINT AC_ACODE_FK FOREIGN KEY (albumCode)
    REFERENCES Album (albumCode) 
    ON DELETE CASCADE ON UPDATE CASCADE
);
/* POPULATE Album TABLE */
INSERT INTO Album (albumCode, albumTitle, artist, yearOfRelease)
VALUES (111, 'Back to Black', 'Amy Winehouse', 2006);

INSERT INTO Album (albumCode, albumTitle, artist, yearOfRelease)
VALUES (222, 'How Will You Know If You Never Try', 'COIN', 2017);

INSERT INTO Album (albumCode, albumTitle, artist, yearOfRelease)
VALUES (333, 'Rumours', 'Fleetwood Mac', 1976);

INSERT INTO Album (albumCode, albumTitle, artist, yearOfRelease)
VALUES (444, 'Blonde', 'Frank Ocean', 2016);

INSERT INTO Album (albumCode, albumTitle, artist, yearOfRelease)
VALUES (555, 'Folklore', 'Taylor Swift', 2020);

/* POPULATE Album_Copy TABLE */
INSERT INTO Album_Copy (copyCode, albumCode, purchaseDate, conditions)
VALUES (1234, 111, '2023-11-04', 'EXCELLENT');

INSERT INTO Album_Copy (copyCode, albumCode, purchaseDate, conditions)
VALUES (5678, 222, '2020-03-20', 'OK');

INSERT INTO Album_Copy (copyCode, albumCode, purchaseDate, conditions)
VALUES (0910, 111, '2021-02-13', 'DAMAGED');

INSERT INTO Album_Copy (copyCode, albumCode, purchaseDate, conditions)
VALUES (1112, 222, '2022-11-23', 'DAMAGED');

INSERT INTO Album_Copy (copyCode, albumCode, purchaseDate, conditions)
VALUES (1314, 333, '2023-06-11', 'OK');

INSERT INTO Album_Copy (copyCode, albumCode, purchaseDate, conditions)
VALUES (1516, 444, '2022-10-18', 'EXCELLENT');

INSERT INTO Album_Copy (copyCode, albumCode, purchaseDate, conditions)
VALUES (1718, 555, '2023-06-01', 'GOOD');


