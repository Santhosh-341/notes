-- create the database
CREATE DATABASE IF NOT EXISTS santhu;
USE santhu;

-- create the notes table
CREATE TABLE IF NOT EXISTS notes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  itemdes VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- insert a note
INSERT INTO notes (itemdes)
VALUES ('My first note');

-- read all notes
SELECT * FROM notes
ORDER BY created_at DESC;

-- update a note
UPDATE notes
SET itemdes = 'Updated note text'
WHERE id = 1;

-- delete a note
DELETE FROM notes
WHERE id = 1;