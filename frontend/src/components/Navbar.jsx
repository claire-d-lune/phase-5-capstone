import React from "react";
import axios from "axios";
import { Link, useNavigate} from "react-router-dom";
import puzzleIcon from "../assets/icons/jigsaws/png/027-puzzle-18.png";
import ImageCollection from "../assets/icons/ImageCollection";
 
const Navbar = ({user, setCurrentUser}) => {
  
    const navigate = useNavigate() 
    //Log out. First API, then removed from state. Redirect to login afterward. 
    const handleLogout = async () => {
      await axios.delete("/api/logout");
            setCurrentUser({})
      return navigate("/") ;
    }
   
    return(
      <div data-theme="garden" className="navbar bg-base-100">
        <div className="navbar-start">
          <div className="dropdown">
            <label tabIndex={0} className="btn btn-ghost btn-circle">
              <svg xmlns="http://www.w3.org/2000/svg" className="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M4 6h16M4 12h16M4 18h7" /></svg>
            </label>
            <ul tabIndex={0} className="menu menu-compact dropdown-content mt-3 p-2 shadow bg-base-100 rounded-box w-52">
              <li><Link to="/home">Homepage</Link></li>
              <li><Link to="/login">Login</Link></li>
              <li><Link to="/leaderboard">Leaderboards</Link></li>
              <li><Link to="/create_quiz">Create a Custom Quiz</Link></li>
              <li><Link to="/randomizer">Randomizer</Link></li>
            </ul>
          </div>
        </div>
        <div className="navbar-center">
          <div className="w-10 rounded-full">
            <img src={puzzleIcon} alt="User Image" />
          </div>
          <Link className="btn btn-ghost normal-case text-2xl" to="/home">Quizzler 2.0</Link>
        </div>
        <div className="navbar-end">
          <Link to="/create_quiz" className="btn btn-primary">Create Your Own Quiz</Link>
          <Link to="/randomizer" className="btn btn-primary mx-5">Randomizer</Link>
          {/* <button className="btn btn-ghost btn-circle">
            <svg xmlns="http://www.w3.org/2000/svg" className="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" /></svg>
          </button>
          <button className="btn btn-ghost btn-circle">
            <div className="indicator">
              <svg xmlns="http://www.w3.org/2000/svg" className="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" /></svg>
              <span className="badge badge-xs badge-primary indicator-item"></span>
            </div>
          </button> */}
          <div className="dropdown dropdown-end">
          <label tabIndex={0} className="btn btn-ghost btn-circle avatar">
            <div className="w-10 rounded-full">
              <img src={ImageCollection[`${user.image_url}`]} alt="User Image" />
            </div>
          </label>
          <ul tabIndex={0} className="mt-3 p-2 shadow menu menu-compact dropdown-content bg-base-100 rounded-box w-52">
            <li>
              <Link to="/profile">
                Profile
                {/* <span className="badge">New</span> */}
              </Link>
            </li>
            {/* <li><a>Settings</a></li> */}
            <li><a onClick={handleLogout}>Logout</a></li>
            <li><Link to="/create_quiz">Create a Quiz</Link></li>
          </ul>
       </div>
        </div>
      </div>
    )
}

export default Navbar