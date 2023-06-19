const { 
    GraphQLSchema, 
    GraphQLObjectType, 
    GraphQLList, 
    GraphQLID, 
    GraphQLString, 
    GraphQLInt 
} = require("graphql");
const Tutor = require("../models/Tutor.js")
const Student = require("../models/Student.js")
const Course = require("../models/Course.js")

const TutorType = new GraphQLObjectType({
    name: "TutorType",
    fields: {
        id: { type: GraphQLID }, 
        name: { type: GraphQLString },
        email: { type: GraphQLString },
        phone: { type: GraphQLString },
        rating: { type: GraphQLInt }
    }
})

const StudentType = new GraphQLObjectType({
    name: "StudentType",
    fields: {
        id: { type: GraphQLID }, 
        name: { type: GraphQLString },
        email: { type: GraphQLString },
        phone: { type: GraphQLString }
    }
})

const CourseType = new GraphQLObjectType({
    name: "CourseType",
    fields: {
        id: { type: GraphQLID }, 
        code: { type: GraphQLString },
        name: { type: GraphQLString }
    }
})

const RootQuery = new GraphQLObjectType({
    name: "RootQueryType",
    fields: {
        tutors: {
            type: new GraphQLList(TutorType),
            resolve: (parent, args) => Tutor.findAll()
        },
        tutor: {
            type: TutorType,
            args: {
                id: { type: GraphQLID }
            },
            resolve: (parent, args) => Tutor.findById(args.id)
        },
        students: {
            type: new GraphQLList(StudentType),
            resolve: (parent, args) => Student.findAll()
        },
        student: {
            type: StudentType,
            args: {
                id: { type: GraphQLID }
            },
            resolve: (parent, args) => Student.findById(args.id)
        },
        courses: {
            type: new GraphQLList(CourseType),
            resolve: (parent, args) => Course.findAll()
        },
        course: {
            type: CourseType,
            args: {
                id: { type: GraphQLID }
            },
            resolve: (parent, args) => Course.findById(args.id)
        },
    }
})

module.exports = new GraphQLSchema({
    query: RootQuery
});