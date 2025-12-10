const express = require('express');
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
    res.send('Hello World!');
});

app.get('/konyvkiir', (req, res) => {
   const sql = 'SELECT * FROM konyvtar.konyvek;'
   db.query(sql, (err, result) => {
       if (err) {
           return res.status(500).send('Hiba az adadatok lekérdezése során');
       }
         res.json(result);
    });
    
});

app.delete('/konyvtorol', (req, res) => {
    const sql = 'DELETE FROM konyvtar.konyvek;'
    db.query(sql, (err, result) => {
        if (err) {
            return res.status(500).send('Hiba az adadatok törlése során');
        }
          res.json(result);
     });
     
 });

 app.post('/konyvekad', (req, res) => {
    const sql = `insert into konyvek (konyv_id, cim, szerzo, mufaj)
values (4, 'Tomie', 'Junji Ito', 'horror');`
    db.query(sql, (err, result) => {
        if (err) {
            return res.status(500).send('Hiba az adadatok lekérdezése során');
        }
          res.json(result);
     });
     
 });

app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});

