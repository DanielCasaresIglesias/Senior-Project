import React, { useState } from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Header from './components/Header';
import Home from './pages/HomePage.jsx';
import Search from './pages/SearchPage.jsx';
import About from './pages/AboutPage.jsx';
import PlanTrip from './pages/PlanTripPage/PlanTripPage.jsx';
import './styles/styles.css';

const App = () => {
  const [user, setUser] = useState({
    username: 'JohnDoe',
    profilePic: '/images/ProfilePhotoPlaceholder.png'
  });

  const handleLogin = (loginData) => {
    // Your login logic here
  };

  const handleLogout = () => {
    setUser(null);
  };

  const handleSignup = () => {
    // Your sign up logic here
  };

  return (
    <Router>
      <div className="App">
        <Header 
          user={user}
          onLogin={handleLogin}
          onLogout={handleLogout}
          onSignup={handleSignup}
        />
        <div className="main-content">
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/search" element={<Search />} />
            {/* <Route path="/search/results" element={<Search />} /> */}
            <Route path="/about" element={<About />} />
            <Route path="/plan-trip" element={<PlanTrip />} />
          </Routes>
        </div>
      </div>
    </Router>
  );
};

export default App;