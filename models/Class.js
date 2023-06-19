const BaseModel = require("./BaseModel.js");

class Class extends BaseModel {
    static getTableName() {
        return "classes";
    }

    constructor(id, courseId, tutorId, studentId) {
        this.id = id;
        this.courseId = courseId;
        this.tutorId = tutorId;
        this.studentId = studentId;
    }
}

module.exports = Class;