const BaseModel = require("./BaseModel.js");

class Student extends BaseModel {
    static getTableName() {
        return "students";
    }
    
    constructor(name, email, phone) {
        this.name = name;
        this.email = email;
        this.phone = phone;
    }
}

module.exports = Student;