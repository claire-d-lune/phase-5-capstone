import React, { useEffect } from "react";
import { useParams } from 'react-router-dom';
import { useQuery } from '@tanstack/react-query'
import axios from "axios";
import QuestionBox from "./QuestionBox";

const QuizPage = () => {

    const {id} = useParams()
    const {data: quizInfo, isLoading, isError, refetch} = useQuery({
        queryKey: [`quiz${id}`], 
        queryFn: () => {return axios.get(`/api/quizzes/${id}`).then(res => res.data)},
        refetchOnWindowFocus: false
    });
    const {data: userData} = useQuery(['currentUser'])

    //creating an empty results array. I will create default entries of false for each question, and update the array appropriately
    //as answers are submitted. 
    let quizResults = []
    //Creating a card for each question:
    let questionNumber = 0
    let questionStack = quizInfo?.questions.map(q => {
        quizResults.push(false)
        //increment a counter for numbering
        questionNumber += 1
        return <QuestionBox 
                key={`quiz${id}`+ questionNumber} 
                number={questionNumber}
                question={q}
                quizResults={quizResults}/>
    })



    //submit function: 
    // let [score, setScore] = useState(0)
    const handleSubmit = () => {
        let results = quizResults.filter(n => n).length
        // console.log("Score is: " + results)
        // setScore(results)
        axios.post("/api/attempts", {quiz_id: id, user_id: userData.id, score: results}).then(res => console.log(res.data))
    }
    
    return(
        <div className="grid relative justify-center top-10">  
            <div className="fixed left-10 top-48 text-center my-5">
                <div className="radial-progress" style={{"--value":(quizResults.length * 10)}}>{(quizResults.length * 10)}</div>
                <p className="py-2">Progress</p>
            </div>
            {/* <div className="fixed left-10 top-80 text-center my-5">
                <div className="radial-progress" style={{"--value":(score * 10)}}>{(score * 10)}%</div>
                <p className="py-2">Results</p>
            </div> */}
                {questionStack}
            <div className="form-control-radio card-actions justify-center">
                    <button onClick={handleSubmit} className="btn btn-primary justify-center">Submit Quiz</button>
                    {/* <button className="btn btn-ghost">Deny</button> */}
            </div>
            <h1>Hello from Quizpage</h1>
        </div>
    )
}

export default QuizPage