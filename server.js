const express = require('express')
const expressGraphQL = require('express-graphql').graphqlHTTP
const schema = require('./schema/schema.js')
require('dotenv').config()

const app = express()
const PORT = process.env.PORT || 3000

app.use('/graphql', expressGraphQL({
    schema: schema,
    graphiql: true,
}))
    
app.listen(PORT, () => console.log(`Listening on port ${PORT}`))