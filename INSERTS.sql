INSERT INTO TBL_AUTORES (ID_Autor, Nome_Autor, Sobrenome_Autor)
VALUES (1, 'Stephen', 'King'),
(2, 'Franz', 'Kafka'),
(3, 'Josh', 'Malerman'),
(4, 'Jules', 'Verne')

SELECT * FROM TBL_AUTORES

INSERT INTO TBL_EDITORAS (Nome_Editora)
VALUES ('Companhia das letras'),
('Abril coleções'),
('Intríseca'),
('Suma')

SELECT * FROM TBL_EDITORAS

INSERT INTO TBL_GENEROS (Nome_Genero)
VALUES ('Ficção'),
('Romance'),
('Terror'),
('Suspense'),
('Aventura')

SELECT * FROM TBL_GENEROS

INSERT INTO TBL_LIVROS (Titulo_Livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_Editora, ID_Genero)
VALUES ('A Metamorfose', '9788571646858', '19150101', 30.00, 2, 1, 1),
('Caixa de passaros', '9788580576528', '20150101', 35.00, 3, 3, 3),
('Cujo', '9788556510259', '19810101', 60.00, 1, 4, 3),
('20.000 Léguas Submarinas', '9788579714139', '19540101', 35.00, 4, 2, 5)

SELECT * FROM TBL_LIVROS

-- Corrigir nome do livro
--UPDATE PDI..TBL_LIVROS SET TITULO_LIVRO = 'Cujo' WHERE ID_Livro = 103

SELECT * FROM TBL_LIVROS