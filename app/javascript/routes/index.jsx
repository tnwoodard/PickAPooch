import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Home from "../components/Home";
import Pooches from "../components/Pooches";


export default (
  <Router>
    <Routes>
      <Route path="/" element={<Home />} />
      <Route path="/pooches" element={<Pooches />} />




    </Routes>
  </Router>
);