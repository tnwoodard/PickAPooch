import React, { useState, useEffect } from "react";
import { Link, useNavigate } from "react-router-dom";

const Pooches = () => {
    const navigate = useNavigate();
    const [pooches, setPooches] = useState([]);

    useEffect(() => {
        const url = "/api/v1/pooches/index";
        fetch(url)
          .then((res) => {
            if (res.ok) {
              return res.json();
            }
            throw new Error("Network response was not ok.");
          })
          .then((res) => setPooches(res))
          .catch(() => navigate("/"));
      }, []);
    
      const allPooches = pooches.map((pooch, index) => (
        <div key={index} className="col-md-6 col-lg-4">
          <div className="card mb-4">
            <img
              src={pooch.image}
              className="card-img-top"
              alt={`${pooch.name} image`}
            />
            <div className="card-body">
              <h5 className="card-title">{pooch.name}</h5>
              <Link to={`/pooch/${pooch.id}`} className="btn custom-button">
                View Pooch
              </Link>
            </div>
          </div>
        </div>
      ));
      const noPooch = (
        <div className="vw-100 vh-50 d-flex align-items-center justify-content-center">
          <h4>
            No pooches yet. Why not <Link to="/new_pooch">create one</Link>
          </h4>
        </div>
      );
    
      return (
        <>
          <section className="jumbotron jumbotron-fluid text-center">
            <div className="container py-5">
              <h1 className="display-4">Pooches for every occasion</h1>
              <p className="lead text-muted">
                We’ve pulled together our most popular pooches, our latest
                additions, and our specialist's picks.
              </p>
            </div>
          </section>
          <div className="py-5">
            <main className="container">
              <div className="text-end mb-3">
                <Link to="/pooch" className="btn custom-button">
                  Create New Pooch
                </Link>
              </div>
              <div className="row">
                {pooches.length > 0 ? allPooches : noPooch}
              </div>
              <Link to="/" className="btn btn-link">
                Home
              </Link>
            </main>
          </div>
        </>
      );
  };
  
  export default Pooches;