/**
 * *************
 * Requires
 * *************
 */
const express = require('express');
var QRCode = require('qrcode')
const Plante = require('./public/js/classes/Plante.js');

/**
 * *************
 * Instantiations/Configs
 * *************
 */
const app = express();
app.set('view engine', 'pug');
app.set('views', process.cwd() + '/public/views');
app.use(express.static(process.cwd() + '/public'));

/**
 * *************
 * Routing
 * *************
 */

// Accueil
app.get('/', (req, res) => {
    res.render('index')
});

app.get('/jouer', (req, res) => {
   Plante.random(10)
       .then(plantes => {
           res.render('jeux', {plantes: plantes})
       })
       .catch(error => {
           res.render('error', error)
       })
});

app.get('/plantes', (req, res) => {
   Plante.all()
       .then(plantes => {
           res.render('plantes', {plantes: plantes})
       })
       .catch(error => {
           console.log(error);
           res.render('error', error)
       })
});

app.get('/plante/:id', (req, res) => {
    Plante.find(req.params.id)
        .then(plante => {
            res.render('plante', {plante: plante})
        })
        .catch(error => {
            res.render('error', error)
        })
});

app.get('/ruche', (req, res) => {
    return res.render('ruche');
});

app.get('/scan', (req,res) => {
    res.render('scan')
});

app.listen(3000);
