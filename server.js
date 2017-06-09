import express from 'express';
import graphqlHTTP from 'express-graphql';
import schema from './src/schema/index';

var app = express();
app.use('/graphql', graphqlHTTP({
  schema: schema,
  // rootValue: root,
  graphiql: true,
}));
app.get('/', (req, res, next) => {
  res.json({
    hello: 'world'
  });
});
app.listen(4000, () => console.log('Now browse to localhost:4000/graphql'));
