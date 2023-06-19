const BaseModel = require("./BaseModel.js");

class Tutor extends BaseModel {
    static getTableName() {
        return "tutors";
    }

    constructor(name, email, phone, rating) {
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.rating = rating;
    }
    
}

module.exports = Tutor;