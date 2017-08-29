DROP TABLE IF EXISTS love;

CREATE TABLE love (

  id SERIAL PRIMARY KEY,
  image VARCHAR(255),
  title VARCHAR(255),
  body TEXT

);

INSERT INTO love (image , title , body) VALUES ('https://www.londonbookfair.co.uk/images/155_162_delegate_large.png?h=162&type=3&w=155&q=100&v=636370973436984793' , 'profile 1' , 'Body text 1');
INSERT INTO love (image , title , body) VALUES ('https://www.londonbookfair.co.uk/images/155_162_delegate_large.png?h=162&type=3&w=155&q=100&v=636370973436984793' , 'profile 2' , 'Body text 2');
INSERT INTO love (image , title , body) VALUES ('https://www.londonbookfair.co.uk/images/155_162_delegate_large.png?h=162&type=3&w=155&q=100&v=636370973436984793' ,'profile 3' , 'Body text 3');
INSERT INTO love (image , title , body) VALUES ('https://www.londonbookfair.co.uk/images/155_162_delegate_large.png?h=162&type=3&w=155&q=100&v=636370973436984793' , 'profile 4' , 'Body text 4');

CREATE TABLE attrc (

  id SERIAL PRIMARY KEY,
  image VARCHAR(255),
  title VARCHAR(255),
  body TEXT

);

INSERT INTO attrc (image , title , body) VALUES ('http://freevector.co/wp-content/uploads/2012/07/59170-user-filled-person-shape.png','Melson','Awesome!');
INSERT INTO attrc (image , title , body) VALUES ('','','');
INSERT INTO attrc (image , title , body) VALUES ('','','');
INSERT INTO attrc (image , title , body) VALUES ('','','');