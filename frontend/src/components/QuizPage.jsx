import React, {useState} from "react";
import { useParams } from 'react-router-dom';
import { useQuery } from '@tanstack/react-query'
import axios from "axios";

const QuizPage = () => {

    const {id} = useParams()
    const {data: quizInfo, isLoading, isError, refetch} = useQuery([`quiz${id}`], () => {
        return axios.get(`/api/quizzes/${id}`).then(res => res.data)
    });

    //Creating a card for each question:
    let questionNumber = 0
    let questionStack = quizInfo?.questions.map(q => {
        //increment a counter for numbering
        questionNumber += 1

        //assign answers to array and use a shuffle so the correct choice is not predictable. 
        let choices = [q.correct_answer, q.incorrect_answer_1, q.incorrect_answer_2, q.incorrect_answer_3]

        //shuffling the order of the the possible answers below:
        choices.sort((a, b) => 0.5 - Math.random())
   
        return <div className="card w-96 bg-neutral text-neutral-content my-4">
                    <div className="card-body items-center text-left pt-4">
                        <div className="divider my-2">{questionNumber}</div>
                        <p>{q.category}</p>
                        <h2 className="card-title">{`${q.question}`}</h2>
                    {/* <div className="form-control-radio card-actions justify-end">
                        <button className="btn btn-primary">Accept</button>
                        <button className="btn btn-ghost">Deny</button>
                    </div> */}
                            <div className="form-control">
                            <label className="label cursor-pointer">
                                <span className="label-text mr-3">{choices[0]}  </span> 
                                <input type="radio"  name={`radio-${questionNumber}`} className="radio checked:bg-purple-300" unchecked />
                            </label>
                            <label className="label cursor-pointer">
                                <span className="label-text mr-3">{choices[1]}</span> 
                                <input type="radio" name={`radio-${questionNumber}`} className="radio checked:bg-purple-300" unchecked />
                            </label>
                            <label className="label cursor-pointer">
                                <span className="label-text mr-3">{choices[2]}</span> 
                                <input type="radio"  name={`radio-${questionNumber}`} className="radio checked:bg-purple-300" unchecked />
                            </label>
                            <label className="label cursor-pointer">
                                <span className="label-text mr-3">{choices[3]}</span> 
                                <input type="radio" name={`radio-${questionNumber}`} className="radio checked:bg-purple-300" unchecked />
                            </label>
                        </div>
                    </div>
                </div>
    })

    return(
        <div class="grid relative justify-center top-10">  
            <div className="fixed left-10 top-40 text-center my-5">
                <div className="radial-progress" style={{"--value":70}}>70%</div>
                <p className="py-2">Progress</p>
            </div>
            <div className="fixed left-10 top-1/3 text-center my-5">
                <div className="radial-progress" style={{"--value":70}}>70%</div>
                <p className="py-2">Results</p>
            </div>
                {questionStack}
            <p>{id}</p>
            <h1>Hello from Quizpage</h1>
        </div>
    )
}

export default QuizPage