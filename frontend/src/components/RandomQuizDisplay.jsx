import React, { useState } from "react";
import { Link } from 'react-router-dom';
import { useQuery } from '@tanstack/react-query'
import axios from "axios";
import QuestionBox from "./QuestionBox";
import QuestionResults from "./QuestionResults";

const RandomQuizDisplay = ({questions, difficulty, category}) => {

    // creating an empty results array. I will create default entries of false for each question, and update the array appropriately as answers are submitted. 
    let quizResults = []

    // Creating a card for each question. 
    let questionNumber = 0
    let questionStack = questions.map(q => {
        quizResults.push(false)
        let choices = [q.correct_answer, q.incorrect_answer_1, q.incorrect_answer_2, q.incorrect_answer_3]
    //increment a counter for numbering
        questionNumber += 1
        return  <QuestionBox key={`random_quiz_`+ questionNumber} 
                number={questionNumber}
                question={q}
                quizResults={quizResults}
                choices = {choices}/>
    })
    //I'm using results in state as well to pass along after render and the rerender. 
    const [finalResults, setFinalResults] = useState([])
    const [score, setScore] = useState(0)
    //submit function: 
    const handleSubmit = () => {
        let results = quizResults.filter(n => n).length
        // axios.post("/api/attempts", {quiz_id: id, user_id: userData.id, score: results}).then(res => console.log(res.data))
        setFinalResults([...quizResults])
        setScore(results)
        window.scrollTo(0, 0)
    }

    questionNumber = 0
    let resultsStack = questions.map((q) => {
        let isCorrect = finalResults[questionNumber]
        questionNumber += 1
        return <QuestionResults 
                key = {`randomQuiz_results_${questionNumber}`} 
                question = {q} 
                number = {questionNumber}
                isCorrect = {isCorrect}/>
    })

    return(
        <div className="grid relative justify-center top-10">
            <h2 className="relative justify-self-center text-3xl">{`Enjoy this random ${category} quiz!`}</h2>
            <h2 className="relative justify-self-center text-3xl">{`(${difficulty})`}</h2>
            {(finalResults.length === 0) ? null :  
            <div className="fixed left-10 top-48 text-center my-5">
                <div className="radial-progress" style={{"--value": ((score/finalResults.length) * 100)}}>{score/finalResults.length * 100}%</div>
                <p className="py-2">Correct</p>
                <p className="py-2">{score}/{finalResults.length}</p>
            </div>  }
            {/* After results have been submitted, the stack changes to results:  */}
            {(finalResults.length === 0) ? questionStack : resultsStack}
            <div className="form-control-radio card-actions justify-center">
                {/* Ternary for Buttons - ('submit' changes to 'return home', etc,)  */
                (finalResults.length === 0) ? 
                <button onClick={handleSubmit} className="btn btn-primary justify-center">Submit Quiz</button> 
                :   
                <>
                <Link to='/home' className="btn btn-secondary justify-center">Return Home</Link>
                <Link to='/profile'  className="btn btn-secondary justify-center">Go To Profile</Link>
                </>}
            </div>
            <br/>
        </div>)
}

export default RandomQuizDisplay