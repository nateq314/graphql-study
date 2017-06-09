CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  firstname varchar(20) NOT NULL,
  lastname varchar(20) NOT NULL,
  created_at timestamp DEFAULT current_timestamp
);

CREATE TABLE messages (
  id SERIAL PRIMARY KEY,
  user_id integer REFERENCES users,
  content text NOT NULL,
  created_at timestamp DEFAULT current_timestamp
);

INSERT INTO users (firstname, lastname) VALUES ('Firstname1', 'Lastname1');
INSERT INTO users (firstname, lastname) VALUES ('Firstname2', 'Lastname2');
INSERT INTO users (firstname, lastname) VALUES ('Firstname3', 'Lastname3');
INSERT INTO users (firstname, lastname) VALUES ('Firstname4', 'Lastname4');
INSERT INTO users (firstname, lastname) VALUES ('Firstname5', 'Lastname5');
INSERT INTO users (firstname, lastname) VALUES ('Firstname6', 'Lastname6');
INSERT INTO users (firstname, lastname) VALUES ('Firstname7', 'Lastname7');
INSERT INTO users (firstname, lastname) VALUES ('Firstname8', 'Lastname8');
INSERT INTO users (firstname, lastname) VALUES ('Firstname9', 'Lastname9');
INSERT INTO users (firstname, lastname) VALUES ('Firstname10', 'Lastname10');

INSERT INTO messages (user_id, content) VALUES (1, 'aaaaaaaaaaaaaaaaaaaaaaaa');
INSERT INTO messages (user_id, content) VALUES (1, 'bbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO messages (user_id, content) VALUES (1, 'cccccccccccccccccccccccc');
INSERT INTO messages (user_id, content) VALUES (2, 'dddddddddddddddddddddddd');
INSERT INTO messages (user_id, content) VALUES (2, 'eeeeeeeeeeeeeeeeeeeeeeee');
INSERT INTO messages (user_id, content) VALUES (2, 'ffffffffffffffffffffffff');
INSERT INTO messages (user_id, content) VALUES (2, 'gggggggggggggggggggggggg');
INSERT INTO messages (user_id, content) VALUES (3, 'hhhhhhhhhhhhhhhhhhhhhhhh');
INSERT INTO messages (user_id, content) VALUES (3, 'iiiiiiiiiiiiiiiiiiiiiiii');
INSERT INTO messages (user_id, content) VALUES (3, 'jjjjjjjjjjjjjjjjjjjjjjjj');
INSERT INTO messages (user_id, content) VALUES (3, 'kkkkkkkkkkkkkkkkkkkkkkkk');
INSERT INTO messages (user_id, content) VALUES (3, 'llllllllllllllllllllllll');
INSERT INTO messages (user_id, content) VALUES (4, 'aaaaaaaaaaaaaaaaaaaaaaaa');
INSERT INTO messages (user_id, content) VALUES (4, 'bbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO messages (user_id, content) VALUES (4, 'cccccccccccccccccccccccc');
INSERT INTO messages (user_id, content) VALUES (5, 'dddddddddddddddddddddddd');
INSERT INTO messages (user_id, content) VALUES (5, 'eeeeeeeeeeeeeeeeeeeeeeee');
INSERT INTO messages (user_id, content) VALUES (5, 'ffffffffffffffffffffffff');
INSERT INTO messages (user_id, content) VALUES (5, 'gggggggggggggggggggggggg');
INSERT INTO messages (user_id, content) VALUES (6, 'hhhhhhhhhhhhhhhhhhhhhhhh');
INSERT INTO messages (user_id, content) VALUES (6, 'iiiiiiiiiiiiiiiiiiiiiiii');
INSERT INTO messages (user_id, content) VALUES (6, 'jjjjjjjjjjjjjjjjjjjjjjjj');
INSERT INTO messages (user_id, content) VALUES (6, 'kkkkkkkkkkkkkkkkkkkkkkkk');
INSERT INTO messages (user_id, content) VALUES (6, 'llllllllllllllllllllllll');
INSERT INTO messages (user_id, content) VALUES (7, 'aaaaaaaaaaaaaaaaaaaaaaaa');
INSERT INTO messages (user_id, content) VALUES (7, 'bbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO messages (user_id, content) VALUES (7, 'cccccccccccccccccccccccc');
INSERT INTO messages (user_id, content) VALUES (8, 'dddddddddddddddddddddddd');
INSERT INTO messages (user_id, content) VALUES (8, 'eeeeeeeeeeeeeeeeeeeeeeee');
INSERT INTO messages (user_id, content) VALUES (8, 'ffffffffffffffffffffffff');
INSERT INTO messages (user_id, content) VALUES (8, 'gggggggggggggggggggggggg');
INSERT INTO messages (user_id, content) VALUES (9, 'hhhhhhhhhhhhhhhhhhhhhhhh');
INSERT INTO messages (user_id, content) VALUES (9, 'iiiiiiiiiiiiiiiiiiiiiiii');
INSERT INTO messages (user_id, content) VALUES (9, 'jjjjjjjjjjjjjjjjjjjjjjjj');
INSERT INTO messages (user_id, content) VALUES (9, 'kkkkkkkkkkkkkkkkkkkkkkkk');
INSERT INTO messages (user_id, content) VALUES (9, 'llllllllllllllllllllllll');
INSERT INTO messages (user_id, content) VALUES (10, 'aaaaaaaaaaaaaaaaaaaaaaaa');
INSERT INTO messages (user_id, content) VALUES (10, 'bbbbbbbbbbbbbbbbbbbbbbbb');
INSERT INTO messages (user_id, content) VALUES (10, 'cccccccccccccccccccccccc');
