//I separated this file so that I can use the user context and react query client that I created in app. 

import React, { useContext, useState } from "react";
import { Routes, Route } from 'react-router-dom';
import { useQuery, useMutation} from '@tanstack/react-query';

import Home from  './Home';
import Leaderboard from './Leaderboard';
import Login from './Login';
import Signup from './Signup';
import Navbar from './Navbar';
import QuizPage from './QuizPage';
import Seedmaker from './dev_components/Seedmaker';
import axios from 'axios';
import ProfilePage from "./ProfilePage";
import CreateQuiz from "./CreateQuizOptions";

const AppRouter = () => {

  const [currentUser, setCurrentUser] = useState("")
  //Fetching my session data for current user: 
  const {data: userData, isLoading, isError} = useQuery({
      queryKey: ["currentUser"], 
      queryFn: () => axios.get("/api/me")
                    .then(res => res.data)
                    .then(data => {
                    setCurrentUser(data)
                    return data
                    }),
      refetchOnWindowFocus: false
    })

  // if user is loading or no user is found, I will display different routes and pages
  if(isLoading) {
    return (
    <h2> Loading... </h2>)
  }
  //if the user is not logged in, only login and signup will be available. 
  if(!currentUser.username){
    return (
        <Routes>
          <Route  path = "/login" element={<Login setCurrentUser={setCurrentUser}/>}/>
          <Route  path = "/" element={<Login setCurrentUser={setCurrentUser}/>}/>
          <Route path = "/signup" element = {<Signup setCurrentUser={setCurrentUser}/>}/>
        </Routes>)}
  else {
      return <>
              <Navbar user={currentUser} setCurrentUser={setCurrentUser}/>
              <Routes>
                <Route path = "/"  element = {<Home/>}/>
                <Route path = "/home" element={<Home/>}/>
                <Route path = "/seedy" element={<Seedmaker/>}/>
                <Route path = "/my_profile" element = {<></>}/>
                <Route path = "/quizpage/:id" element = {<QuizPage/> }/>
                <Route path = "/login" element ={<Login setCurrentUser={setCurrentUser}/>}/>
                <Route path = "/signup" element = {<Signup setCurrentUser={setCurrentUser}/>}/>
                <Route path = "/leaderboard" element={<Leaderboard/>}/>
                <Route path = "/profile" element ={<ProfilePage/>}/>
                <Route path = "/create_a_quiz" element ={<CreateQuiz />}/>
              </Routes>
            </> }
}

export default AppRouter
