// App.js
import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Navbar from './Navbar';
import KonyvLista from './KonyvLista';
import KonyvHozzaad from './KonyvHozzaad';
import KonyvTorol from './KonyvTorol';

function App() {
  return (
    <Router>
      <div>
        <h1>Könyvtár kezelő</h1>
        <Navbar />
        <Routes>
          <Route path="/" element={<h2>Üdvözöllek a könyvtár alkalmazásban!</h2>} />
          <Route path="/lista" element={<KonyvLista />} />
          <Route path="/hozzaad" element={<KonyvHozzaad />} />
          <Route path="/torol" element={<KonyvTorol />} />
        </Routes>
      </div>
    </Router>
  );
}

export default App;
