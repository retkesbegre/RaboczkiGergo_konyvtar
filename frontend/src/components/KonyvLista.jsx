import React, { useEffect, useState } from 'react';
import api from './Api';

const KonyvLista = () => {
  const [konyvek, setKonyvek] = useState([]);

  useEffect(() => {
    api.get('/konyvkiir')
      .then(response => {
        setKonyvek(response.data);
      })
      .catch(error => {
        console.error('Hiba a lekérdezés során:', error);
      });
  }, []);

  return (
    <div>
      <h2>Könyvek JSON formában:</h2>
      <pre>{JSON.stringify(konyvek, null, 2)}</pre>
    </div>
  );
};

export default KonyvLista;
