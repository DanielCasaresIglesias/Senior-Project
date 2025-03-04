import React from 'react';
import { useNavigate } from 'react-router-dom';
import FindAPark from '../components/FindAPark';
import '../styles/home.css';

const Home = () => {
  return (
    <div>
        <img src="/images/Homepage-Image.jpg" alt="Yosemite valley" className="image" />
        <div className="park-search">
            <FindAPark/>
        </div>
      {/* Add more content here */}
    </div>
  );
};

export default Home;
