import React from 'react';
import api from './Api';

const KonyvHozzaad = () => {
  const handleAdd = () => {
    api.post('/konyvekad')
      .then(response => {
        console.log('Hozzáadás sikeres:', response.data);
      })
      .catch(error => {
        console.error('Hiba a hozzáadás során:', error);
      });
  };

  return (
    <div>
      <button onClick={handleAdd}>Új könyv hozzáadása</button>
    </div>
  );
};

export default KonyvHozzaad;
