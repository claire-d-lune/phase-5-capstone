import React  from 'react'
import './index.css'
import { Routes, Route } from 'react-router-dom'
import { QueryClient, QueryClientProvider, useQuery} from '@tanstack/react-query'

import AppRouter from './components/AppRouter'
import { UserProvider } from './context/context'
import Home from  './components/Home'
import Leaderboard from './components/Leaderboard'
import Login from './components/Login'
import Signup from './components/Signup';
import Navbar from './components/Navbar'
import QuizPage from './components/QuizPage'
import Seedmaker from './components/dev_components/Seedmaker'
import axios from 'axios'

function App() {
  //Below I am creating an instance of client to be passed to child components using the provider -- just like context 
  const client = new QueryClient();

  // I separated the routing out from app so that I can use the context and query client
  // to set the current user and render routes appropriately. 
  return (
    <QueryClientProvider client={client}>
      {/* <UserProvider> */}
        <AppRouter/>
      {/* </UserProvider> */}
    </QueryClientProvider>
  )
}

export default App
