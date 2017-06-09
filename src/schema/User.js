import {
  GraphQLObjectType,
  GraphQLList,
  GraphQLString,
  GraphQLInt,
  GraphQLFloat
} from 'graphql';

import knex from '../data/database';

export default new GraphQLObjectType({
  name: 'User',
  sqlTable: 'accounts',   // sqlTable can also be a function (thunk)
  uniqueKey: 'id',
  fields: () => ({
    id: {
      type: GraphQLInt
    },
    email: {
      type: GraphQLString,
      sqlColumn: 'email_address'
    },
    fullName: {
      description: 'A user\'s first and last name',
      type: GraphQLString,
      // perhaps there is no 1-to-1 mapping of field to column
      // this field depends on multiple columns
      sqlDeps: ['first_name', 'last_name'],
      resolve: user => `${user.first_name} ${user.last_name}`
    },
    idEncoded: {
      description: 'The ID base-64 encoded',
      type: GraphQLString,
      sqlColumn: 'id',
      resolve: user => toBase64(user.idEncoded)
    },
  })
});

function toBase64(clear) {
  return Buffer.from(String(clear)).toString('base64');
}
