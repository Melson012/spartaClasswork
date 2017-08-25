DROP TABLE IF EXISTS love;

CREATE TABLE love (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  body TEXT

);

INSERT INTO love (title , body) VALUES ('profile 1' , 'Body text 1');
INSERT INTO love (title , body) VALUES ('profile 2' , 'Body text 2');
INSERT INTO love (title , body) VALUES ('profile 3' , 'Body text 3');
INSERT INTO love (title , body) VALUES ('profile 4' , 'Body text 4');