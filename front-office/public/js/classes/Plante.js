const mysql = require('mysql');

const db = mysql.createConnection({
    host: 'database',
    user: 'abeille',
    password: 'abeille',
    database: 'abeille'
});

class Plante {
    constructor(datas) {
        this.id = datas.id;
        this.nom = datas.nom;
        this.nom_latin = datas.nom_latin;
        this.taille = datas.taille;
        this.couleur = datas.couleur;
        this.floraison = datas.floraison;
        this.emplacement = datas.emplacement;
        this.miellat = datas.miellat;
        this.nectar = datas.nectar;
        this.pollen = datas.pollen;
        this.photo = datas.photo;
        this.created_at = datas.created_at;
        this.updated_at = datas.updated_at;
        this.deleted_at = datas.deleted_at;
    }

    static all(){
        return new Promise((resolve, reject) => {
            const sql = "SELECT * FROM plante";
            db.query(sql, (error, result) => {
                if (!error){
                    let res = [];
                    result.forEach(datas => {res.push(
                        new Plante(datas)
                    )});
                    resolve(res)
                }
                else{
                    reject(error)
                }
            })
        })
    }

    static find(id){
        return new Promise((resolve, reject) => {
            const sql = "SELECT * FROM plante WHERE id = ?";
            db.query(sql, id, (error, result) => {
                if (!error){
                    const plante = new Plante(result[0]);
                    resolve(plante)
                }
                else{
                    reject(error)
                }
            })
        })
    }
}

module.exports = Plante;