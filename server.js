const express = require('express')
const expressGraphQL = require('express-graphql').graphqlHTTP
const {
    GraphQLObjectType,
    GraphQLSchema,
    GraphQLString
} = require('graphql')
const app = express()

const schema = new GraphQLSchema({
    query: new GraphQLObjectType({
        name: "HelloWorld",
        fields: () => ({
            message: {
                type: GraphQLString,
                resolve: () => "Hello World"
            }
        })
    })
})

app.use('/graphql', expressGraphQL({
    schema: schema,
    graphiql: true,
}))
app.listen(5000, () => console.log("Listening on port 5000"))