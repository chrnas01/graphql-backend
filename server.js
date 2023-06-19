const express = require('express')
const expressGraphQL = require('express-graphql').graphqlHTTP
const {
    GraphQLObjectType,
    GraphQLSchema,
    GraphQLString
} = require('graphql')
require('dotenv').config()

const app = express()
const PORT = process.env.PORT || 3000

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
    
app.listen(PORT, () => console.log(`Listening on port ${PORT}`))