const BaseModel = require("./BaseModel.js");

class Course extends BaseModel {
    static getTableName() {
        return "courses";
    }

    constructor(code, name) {
        this.code = code;
        this.name = name;
    }
}

module.exports = Course;