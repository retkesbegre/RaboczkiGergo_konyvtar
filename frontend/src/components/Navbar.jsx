// Navbar.js
import React from 'react';
import { Link } from 'react-router-dom';
import './styles/Navbar.css';

const Navbar = () => {
  return (
    <nav>
      <Link to="/">Főoldal</Link>
      <Link to="/lista">Könyvek listája</Link>
      <Link to="/hozzaad">Könyv hozzáadása</Link>
      <Link to="/torol">Könyvek törlése</Link>
    </nav>
  );
};

export default Navbar;
