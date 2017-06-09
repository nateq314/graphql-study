CREATE TABLE accounts (
  id SERIAL PRIMARY KEY,
  first_name varchar(20) NOT NULL,
  last_name varchar(20) NOT NULL,
  email_address varchar(30),
  created_at timestamp DEFAULT current_timestamp
);

CREATE TABLE relationships (
  follower_id integer REFERENCES accounts,
  followed_id integer REFERENCES accounts,
  created_at timestamp DEFAULT current_timestamp
);

CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  author_id integer REFERENCES accounts,
  body text NOT NULL,
  created_at timestamp DEFAULT current_timestamp
);

CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  body text NOT NULL,
  author_id integer REFERENCES accounts,
  post_id integer REFERENCES posts,
  archived boolean DEFAULT false,
  created_at timestamp DEFAULT current_timestamp
);

CREATE TABLE likes (
  account_id integer REFERENCES accounts,
  comment_id integer REFERENCES comments,
  created_at timestamp DEFAULT current_timestamp
);

CREATE TABLE sponsors (
  generation integer NOT NULL,
  first_name character varying(20),
  last_name character varying(20),
  num_legs integer DEFAULT 2,
  created_at timestamp DEFAULT current_timestamp
);
