import React  from 'react'
import './index.css'
import { Routes, Route } from 'react-router-dom'
import { QueryClient, QueryClientProvider} from '@tanstack/react-query'

import Home from  './components/Home'
import Leaderboard from './components/Leaderboard'
import Login from './components/Login'
import Signup from './components/Signup';
import Navbar from './components/Navbar'
import QuizPage from './components/QuizPage'
import Seedmaker from './components/dev_components/Seedmaker'

function App() {
  //Below I am creating an instance of client to be passed to child components using the provider -- just like context 
  const client = new QueryClient();

  return (
    <QueryClientProvider client={client}>
      <Navbar/>
      <Routes>
        <Route path = "/"  element = {<Home/>}/>
        <Route path = "/home" element={<Home/>}/>
        <Route path = "/seedy" element={<Seedmaker/>}/>
        <Route path = "/my_profile" element = {<></>}/>
        <Route path = "/quizpage/:id" element = {<QuizPage/> }/>
        <Route path = "/login" element ={<Login/>}/>
        <Route path = "/signup" element = {<Signup/>}/>
        <Route path = "/leaderboard" element={<Leaderboard/>}/>
        {/* <Route path =  element = {<></>}/>
        
        <Route path =  element = {<></>}/>
        <Route path =  element = {<></>}/> */}
      </Routes>
    </QueryClientProvider>
  )
}

export default App
