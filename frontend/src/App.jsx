import React from 'react'
import { useState, useEffect } from 'react'
import reactLogo from './assets/react.svg'
import './index.css'
import Counter from './Counter'

function App() {
  const [questions, setQuestions] = useState()

  useEffect(() => {
    fetch("https://opentdb.com/api.php?amount=50&category=15&difficulty=easy&type=multiple")
    .then(res => res.json())
    .then(data => setQuestions(data))
  }, []);

  const formatQuestion = (object, counter) => {
    return (
      `vg_easy_${counter} = Question.create(category: "${object.category}", format: "${object.type}", question: "${object.question}", correct_answer: "${object.correct_answer}", difficulty: "${object.difficulty}", incorrect_answer_1: "${object.incorrect_answers[0]}", incorrect_answer_2: "${object.incorrect_answers[1]}", incorrect_answer_3: "${object.incorrect_answers[2]}")`
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
    <div>
      <div class="radial-progress" style={{"--value":70}}>70%</div>
      <Counter/>
      {infoStack}
    </div>
  )
}

export default App
