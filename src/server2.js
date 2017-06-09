var express = require('express');
var graphqlHTTP = require('express-graphql');
import {
  GraphQLSchema,
  GraphQLObjectType,
  GraphQLList,
  GraphQLString,
  GraphQLInt
} from 'graphql';

const User = new GraphQLObjectType({
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
    capitalizedLastName: {
      type: GraphQLString,
      // do a computed column in SQL with raw expression
      sqlExpr: (table, args) => `UPPER(${table}.last_name)`
    },
    fullName: {
      description: 'A user\'s first and last name',
      type: GraphQLString,
      // perhaps there is no 1-to-1 mapping of field to column
      // this field depends on multiple columns
      sqlDeps: ['first_name', 'last_name'],
      resolve: user => `${user.first_name} ${user.last_name}`
    },
    fullNameAnotherWay: {
      description: 'Another way we can get the full name',
      type: GraphQLString,
      sqlExpr: (table) => `${table}.first_name || ' ' || ${table}.last_name`
    },
    idEncoded: {
      description: 'The ID base-64 encoded',
      type: GraphQLString,
      sqlColumn: 'id',
      resolve: user => toBase64(user.idEncoded)
    },
    fullName: {
      description: 'A user\'s first and last name',
      type: GraphQLString
    }
  })
});

const QueryRoot = new GraphQLObjectType({
  name: 'Query',
  fields: () => ({
    users: {
      type: new GraphQLList(User),
      // resolve: () => {} // TODO
      resolve: (parent, args, context, resolveInfo) => {
        return joinMonster(resolveInfo, {}, (sql) => {
          return knex.raw(sql);
        });
      }
    }
  })
});

function toBase64(clear) {
  return Buffer.from(String(clear)).toString('base64');
}

var app = express();
app.use('/graphql', graphqlHTTP({
  schema: schema,
  rootValue: root,
  graphiql: true,
}));
app.listen(4000, () => console.log('Now browse to localhost:4000/graphql'));
