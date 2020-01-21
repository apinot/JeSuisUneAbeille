const mysql = require('mysql');

const db = mysql.createConnection({
    host: 'database',
    user: 'abeille',
    password: 'abeille',
    database: 'abeille'
});

class Plante {
    constructor() {
    }

    static all(){

    }

    static find(id){

    }
}