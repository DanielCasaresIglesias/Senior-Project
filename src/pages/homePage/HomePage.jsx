import React from 'react';
import { useNavigate } from 'react-router-dom';
import FindAPark from './components/FindAPark';
import ParksNearYou from './components/ParksNearYou';
import './styles/homePage.css';

const Home = () => {
  const parks = [
    { id: 1, imageSrc: "../../images/park-example-photos/yosemite-example.png", parkName: "Yosemite", parkType: "National Park", rating: 4.8 },
    { id: 2, imageSrc: "../../images/park-example-photos/yosemite-example.png", parkName: "Yellowstone", parkType: "National Park", rating: 4.7 },
    { id: 3, imageSrc: "../../images/park-example-photos/yosemite-example.png", parkName: "Grand Canyon", parkType: "National Park", rating: 4.9 },
    { id: 4, imageSrc: "../../images/park-example-photos/yosemite-example.png", parkName: "Zion", parkType: "National Park", rating: 4.6 },
    { id: 5, imageSrc: "../../images/park-example-photos/yosemite-example.png", parkName: "Great Smoky Mountains", parkType: "National Park", rating: 4.5 },
    { id: 6, imageSrc: "../../images/park-example-photos/yosemite-example.png", parkName: "Rocky Mountain", parkType: "National Park", rating: 4.7 },
    { id: 7, imageSrc: "../../images/park-example-photos/yosemite-example.png", parkName: "Everglades", parkType: "National Park", rating: 4.4 }
  ];
  return (
    <div>
      <img src="/images/Homepage-Image.jpg" alt="Yosemite valley" className="image" />
      <div className="park-search">
          <FindAPark/>
      </div>
      <ParksNearYou location="San Luis Obispo" parks={parks} className="parks-near-you"/>
      <p>
        {/* gpgopiawgpoaeghlgiuahugiahrguksbhrgubshkghskrgyakugahkeghakrugbvglaiub
        a;gjoarigjaorighoirhaorhgjao;ijg;aeoihnlaestbjnao;ijgn;oaiwhgoiaghoawhg
        gpgopiawgpoaeghlgiuahugiahrguksbhrgubshkghskrgyakugahkeghakrugbvglaiub
        a;gjoarigjaorighoirhaorhgjao;ijg;aeoihnlaestbjnao;ijgn;oaiwhgoiaghoawhg
        gpgopiawgpoaeghlgiuahugiahrguksbhrgubshkghskrgyakugahkeghakrugbvglaiub
        a;gjoarigjaorighoirhaorhgjao;ijg;aeoihnlaestbjnao;ijgn;oaiwhgoiaghoawhg
        gpgopiawgpoaeghlgiuahugiahrguksbhrgubshkghskrgyakugahkeghakrugbvglaiub
        a;gjoarigjaorighoirhaorhgjao;ijg;aeoihnlaestbjnao;ijgn;oaiwhgoiaghoawhg
        gpgopiawgpoaeghlgiuahugiahrguksbhrgubshkghskrgyakugahkeghakrugbvglaiub
        a;gjoarigjaorighoirhaorhgjao;ijg;aeoihnlaestbjnao;ijgn;oaiwhgoiaghoawhg
        gpgopiawgpoaeghlgiuahugiahrguksbhrgubshkghskrgyakugahkeghakrugbvglaiub
        a;gjoarigjaorighoirhaorhgjao;ijg;aeoihnlaestbjnao;ijgn;oaiwhgoiaghoawhg
        gpgopiawgpoaeghlgiuahugiahrguksbhrgubshkghskrgyakugahkeghakrugbvglaiub
        a;gjoarigjaorighoirhaorhgjao;ijg;aeoihnlaestbjnao;ijgn;oaiwhgoiaghoawhg
        gpgopiawgpoaeghlgiuahugiahrguksbhrgubshkghskrgyakugahkeghakrugbvglaiub
        a;gjoarigjaorighoirhaorhgjao;ijg;aeoihnlaestbjnao;ijgn;oaiwhgoiaghoawhg
        gpgopiawgpoaeghlgiuahugiahrguksbhrgubshkghskrgyakugahkeghakrugbvglaiub
        a;gjoarigjaorighoirhaorhgjao;ijg;aeoihnlaestbjnao;ijgn;oaiwhgoiaghoawhg
        gpgopiawgpoaeghlgiuahugiahrguksbhrgubshkghskrgyakugahkeghakrugbvglaiub
        a;gjoarigjaorighoirhaorhgjao;ijg;aeoihnlaestbjnao;ijgn;oaiwhgoiaghoawhg
        gpgopiawgpoaeghlgiuahugiahrguksbhrgubshkghskrgyakugahkeghakrugbvglaiub
        a;gjoarigjaorighoirhaorhgjao;ijg;aeoihnlaestbjnao;ijgn;oaiwhgoiaghoawhg
        gpgopiawgpoaeghlgiuahugiahrguksbhrgubshkghskrgyakugahkeghakrugbvglaiub
        a;gjoarigjaorighoirhaorhgjao;ijg;aeoihnlaestbjnao;ijgn;oaiwhgoiaghoawhg
        gpgopiawgpoaeghlgiuahugiahrguksbhrgubshkghskrgyakugahkeghakrugbvglaiub
        a;gjoarigjaorighoirhaorhgjao;ijg;aeoihnlaestbjnao;ijgn;oaiwhgoiaghoawhg
        gpgopiawgpoaeghlgiuahugiahrguksbhrgubshkghskrgyakugahkeghakrugbvglaiub
        a;gjoarigjaorighoirhaorhgjao;ijg;aeoihnlaestbjnao;ijgn;oaiwhgoiaghoawhg
        gpgopiawgpoaeghlgiuahugiahrguksbhrgubshkghskrgyakugahkeghakrugbvglaiub
        a;gjoarigjaorighoirhaorhgjao;ijg;aeoihnlaestbjnao;ijgn;oaiwhgoiaghoawhg
        gpgopiawgpoaeghlgiuahugiahrguksbhrgubshkghskrgyakugahkeghakrugbvglaiub
        a;gjoarigjaorighoirhaorhgjao;ijg;aeoihnlaestbjnao;ijgn;oaiwhgoiaghoawhg
        gpgopiawgpoaeghlgiuahugiahrguksbhrgubshkghskrgyakugahkeghakrugbvglaiub
        a;gjoarigjaorighoirhaorhgjao;ijg;aeoihnlaestbjnao;ijgn;oaiwhgoiaghoawhg
        gpgopiawgpoaeghlgiuahugiahrguksbhrgubshkghskrgyakugahkeghakrugbvglaiub
        a;gjoarigjaorighoirhaorhgjao;ijg;aeoihnlaestbjnao;ijgn;oaiwhgoiaghoawhg
        gpgopiawgpoaeghlgiuahugiahrguksbhrgubshkghskrgyakugahkeghakrugbvglaiub
        a;gjoarigjaorighoirhaorhgjao;ijg;aeoihnlaestbjnao;ijgn;oaiwhgoiaghoawhg
        gpgopiawgpoaeghlgiuahugiahrguksbhrgubshkghskrgyakugahkeghakrugbvglaiub
        a;gjoarigjaorighoirhaorhgjao;ijg;aeoihnlaestbjnao;ijgn;oaiwhgoiaghoawhg
        gpgopiawgpoaeghlgiuahugiahrguksbhrgubshkghskrgyakugahkeghakrugbvglaiub
        a;gjoarigjaorighoirhaorhgjao;ijg;aeoihnlaestbjnao;ijgn;oaiwhgoiaghoawhg */}
      </p>
    </div>
  );
};

export default Home;
