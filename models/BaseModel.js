const pool = require('../config/db.js');

class BaseModel {
    static getTableName() {
        return "";
    }
    
    static async findAll() {
        const res = await pool.query(`SELECT * FROM ${this.getTableName()};`);
        return res[0]
    }

    static async findById(id) {
        const res = await pool.query(`SELECT * FROM ${this.getTableName()} WHERE id=?;`, [id]);
        return res[0][0]
    }
}

module.exports = BaseModel;