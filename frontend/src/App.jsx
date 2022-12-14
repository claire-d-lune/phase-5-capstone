import { useState, useEffect } from 'react'
import reactLogo from './assets/react.svg'
import './App.css'

function App() {
  const [count, setCount] = useState(0)
  const [questions, setQuestions] = useState()

  useEffect(() => {
    fetch("https://opentdb.com/api.php?amount=50&category=15&difficulty=hard&type=multiple")
    .then(res => res.json())
    .then(data => setQuestions(data))
  }, []);

  const formatQuestion = (object, counter) => {
    return (
      `vg_hard_${counter} = Question.create(category: "${object.category}", format: "${object.type}", question: "${object.question}", correct_answer: "${object.correct_answer}", difficulty: "${object.difficulty}", incorrect_answer_1: "${object.incorrect_answers[0]}", incorrect_answer_2: "${object.incorrect_answers[1]}", incorrect_answer_3: "${object.incorrect_answers[2]}")`
      )
  }


  let myGoal
  let infoStack 

  if (questions !== undefined){
    let counter = 0 
    myGoal = questions.results.map( q => {
    let response = formatQuestion(q, counter)
    counter += 1
    return response
    })
    infoStack = myGoal.map(element => <p>{element}</p>)
  }

  


  return (
    <div className="App">
      
      <div className="radial-progress" class="align-self-center" style={{"--value":70}}>70%</div>
  
      <div>
        <a href="https://vitejs.dev" target="_blank">
          <img src="/vite.svg" className="logo" alt="Vite logo" />
        </a>
        <a href="https://reactjs.org" target="_blank">
          <img src={reactLogo} className="logo react" alt="React logo" />
        </a>
      </div>
      <div class="h-full bg-white">HELLO</div>
      <h1 class="bg-blue">Vite + React</h1>
      <div className="card">
        <p>{infoStack}</p>
        <button onClick={() => setCount((count) => count + 1)}>
          count is {count}
        </button>
        <p>
          Edit <code>src/App.jsx</code> and save to test HMR
        </p>
      </div>
      <p className="read-the-docs">
        Click on the Vite and React logos to learn more
      </p>

    </div>
  )
}

export default App
