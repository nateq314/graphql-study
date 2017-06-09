import path from 'path';

export default require('knex')({
  client: 'pg',
  connection: {
    host: 'db',
    database: 'example',
    user: 'api',
    password: 'abcdefgh'
  }
});
