// KonyvTorol.js
import React from 'react';
import api from './Api';

const KonyvTorol = () => {
  const handleDelete = () => {
    api.delete('/konyvtorol')
      .then(response => {
        console.log('Törlés sikeres:', response.data);
      })
      .catch(error => {
        console.error('Hiba a törlés során:', error);
      });
  };

  return (
    <div>
      <button onClick={handleDelete}>Összes könyv törlése</button>
    </div>
  );
};

export default KonyvTorol;
