const BaseModel = require("./BaseModel.js");
const pool = require('../config/db.js');

class Tutor extends BaseModel {
    static getTableName() {
        return "tutors";
    }

    constructor(name, email, phone, rating) {
        super();
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.rating = rating;
    }

    async save() {
        try {
            const res = await pool.query(`
            INSERT INTO tutors(name, email, phone, rating) 
            VALUES (?, ?, ?, ${this.rating || "DEFAULT" });
            `, [this.name, this.email, this.phone, this.rating]);
        
            return Tutor.findLatestEntry();
        }
        catch(e) {
            console.log(e);
            throw new Error(e);
        }
    }

    static async findClasses(id) {
        const res = await pool.query(`
            SELECT DISTINCT courses.id, code, name FROM classes
            JOIN courses ON classes.course_id = courses.id
            WHERE tutor_id = ?;`, [id]);
        return res[0];
    }
}

module.exports = Tutor;