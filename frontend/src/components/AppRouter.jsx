//I separated this file so that I can use the user context and react query client that I created in app. 

import React, { useState } from "react";
import { Routes, Route } from 'react-router-dom';
import { useQuery } from '@tanstack/react-query';

import Home from  './Home';
import Leaderboard from './Leaderboard';
import Login from './Login';
import Signup from './Signup';
import Navbar from './Navbar';
import QuizPage from './QuizPage';
import Seedmaker from './dev_components/Seedmaker';
import axios from 'axios';
import ProfilePage from "./ProfilePage";
import CreateQuiz from "./CreateQuiz";

const AppRouter = () => {

  const [currentUser, setCurrentUser] = useState("")

  // Setting up useQuery
  // In the first argument we are naming a query key for the data we are fetching in order to refetch or reference the data from other components.  
  // The second argument is the function that will perform the fetch and set the data

  //Fetching my session data for current user: 
  const {data: userData, isLoading} = useQuery({
      queryKey: ["currentUser"], 
      queryFn: () => axios.get("/api/me")
                    .then(res => res.data)
                    .then(data => {
                    setCurrentUser(data)
                    return data
                    }),
      refetchOnWindowFocus: false
    })
  //I also want to set up my useQuery for 'attempts' here since the data is needed in many components and this is the nearest common parent
  useQuery({
    queryKey: ["attempts"], 
    queryFn: () => axios("/api/attempts").then(res => res.data),
    refetchOnWindowFocus: false
  })

  useQuery({
    queryKey: ["quizzes"], 
    queryFn: () => axios("/api/quizzes").then(res => res.data), 
    refetchOnWindowFocus: false,
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
                <Route path = "/create_quiz" element ={<CreateQuiz />}/>
              </Routes>
            </> }
}

export default AppRouter
