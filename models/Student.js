const BaseModel = require("./BaseModel.js");
const pool = require('../config/db.js');

class Student extends BaseModel {
    static getTableName() {
        return "students";
    }
    
    constructor(name, email, phone) {
        this.name = name;
        this.email = email;
        this.phone = phone;
    }

    static async findTutors(id) {
        const res = await pool.query(`
            SELECT DISTINCT tutors.* FROM classes
            JOIN tutors ON classes.tutor_id = tutors.id
            WHERE student_id = ?;`, [id])
        return res[0]
    }
}

module.exports = Student;