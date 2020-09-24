import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import { BrowserRouter as Router, Route, Link } from 'react-router-dom';
import OtherPage from './OtherPage';
import Fib from './Fib';

class App extends Component {
  render() {
    return (
      <Router>
        <div className="App">
          <header className="App-header">
            <img src="https://bloximages.chicago2.vip.townnews.com/thetandd.com/content/tncms/assets/v3/editorial/5/2a/52aff60c-e179-5b43-9754-1e7c264e12fc/5ba1ba104c953.image.jpg" className="App-logo" alt="logo" />
            <h1 className="App-title">Chris's Fib calculator--Kubernetes GCP-V2</h1>   
            <Link to="/">Home  </Link>
            <Link to="/otherpage">Other Page</Link>
          </header>
          <div>
            <Route exact path="/" component={Fib} />
            <Route path="/otherpage" component={OtherPage} />
          </div>
        </div>
      </Router>
    );
  }
}

export default App;
