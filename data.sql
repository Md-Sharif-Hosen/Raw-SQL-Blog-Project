INSERT INTO authors(author_name) VALUES ('Jane Doe'),('Arif Azad'), ('Saifur Rahmann'),('Hasin Hayder');

INSERT INTO categories(category_name) VALUES('Religion'),('Speken English'),('Technology');


INSERT INTO blogs(title,body,category_id,author_id)
VALUES
('Bela Furabar Age','content about religion.',7,9),
('Object-Oriented Programming with PHP5 ','content about Programming',9,11),
('Spoken English','content about English',8,10),
('The Future of AI', 'Content about artificial intelligence...',9,8)