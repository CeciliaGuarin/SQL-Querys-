CREATE TABLE TBL_REVIEW
(
REVIEW1 INT,
REVIEW2 INT,
REVIEW3 INT,
REVIEW4 INT,
REVIEW5 INT,
ID_LIVRO SMALLINT
CONSTRAINT FK1_ID_Livro FOREIGN KEY (ID_Livro)
REFERENCES TBL_LIVROS (ID_Livro) 
)

INSERT INTO TBL_REVIEW (REVIEW1, REVIEW2,REVIEW3, REVIEW4, REVIEW5, ID_LIVRO)
VALUES (4, 3, 3, 2, 5,101),
(5, 4, 5, 3, 1, 102),
(1, 2, 5, 3, 4, 103),
(1, 2, 3, 2, 4, 104)
