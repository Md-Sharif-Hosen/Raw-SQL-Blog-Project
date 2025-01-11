#create Author_Table
CREATE TABLE authors(
    id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(255) NOT NULL,
    Created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
    Updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );
#create Categories_table
CREATE TABLE categories(
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

#Create blogs_Table

CREATE TABLE blogs(
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    body TEXT NOT NULL,
    category_id INT NOT NULL,
    author_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (author_id) REFERENCES authors(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- CRUD Operations for authors Table
--Create : add new author
INSERT INTO authors(author_name) VALUES('Mizanur Rahman');

--Read: Retrieve All author
SELECT*FROM authors;

--Read: Retrieve a Specific author by ID
SELECT*FROM authors WHERE id=14;

--Update: Update an author's name
UPDATE authors SET author_name='Mizanur Rahman Sresto' WHERE id=14;

--Delete: Delete an author
DELETE FROM authors WHERE id=14;


-- CRUD Operations for authors Table
--Create: add new Categories
INSERT INTO categories(category_name) VALUES("Mathamatics");

--Read: Retrieve All categories
SELECT*FROM categories;

--Read: Retrieve a Specific category by ID
SELECT*FROM categories WHERE id=10;

--Update: Update a category's name
UPDATE categories SET category_name='Computer Science' WHERE id=10;

--Delete: Delete a category
DELETE FROM categories WHERE id=10


-- CRUD Operations for blogs Table
--Create: add new blog
INSERT INTO blogs(title,body,category_id,author_id)
VALUES('Data Structure','content about technology',9,15);

--Read: Retrieve All blogs
SELECT*FROM blogs;

--Read: Retrieve a Specific blog by ID
SELECT*FROM blogs WHERE id=128;

--Read: retrieve all blogs with their category and author information
SELECT blogs.title, blogs.body, categories.category_name,authors.author_name
FROM blogs
JOIN categories ON blogs.category_id=categories.id
JOIN authors ON blogs.author_id=authors.id;

-- Update: Update a blog's title
UPDATE blogs SET title ="Data structure New Version" WHERE id=128;

-- Update: Update a blog's category or author
UPDATE blogs SET category_id=11 ,author_id=16 WHERE id=128;

-- Delete: Delete a blog
DELETE FROM blogs WHERE id=128;

--get all blogs written by a specific author
SELECT authors.author_name,blogs.title , blogs.body
FROM blogs
JOIN authors ON blogs.author_id=authors.id
WHERE authors.id=11;


--To get all blogs under a specific category
SELECT categories.category_name,blogs.title, blogs.body
FROM blogs
JOIN categories ON blogs.category_id=categories.id
--  WHERE categories.id=9;
 WHERE categories.category_name="Technology";