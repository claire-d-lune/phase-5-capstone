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
    let questionStack = quizInfo?.questions.map(question => {
        //ideally I wouldn't use ids for this since they are visible in developer tools, but I think it works for a quick solution.  
        let choices = [
            <option value="incorrect_1" id="incorrect_1">{question.incorrect_answer_1}</option>,
            <option value="incorrect_2" id="incorrect_2">{question.incorrect_answer_2}</option>,
            <option value="incorrect_3" id="incorrect_3">{question.incorrect_answer_3}</option>,
            <option value="correct" id="correct">{ question.correct_answer}</option>
        ]
        //shuffling the order of the the possible answers below:
        choices.sort((a, b) => 0.5 - Math.random())
        return     <div class="min-w-lg max-w-lg bg-[#8e94c1] rounded overflow-hidden shadow-lg my-5 py-2 ">
                        <div class="px-6 py-4">
                            <div class="font-bold text-xl mb-2">{question.question}</div>
                        </div>
                        <div>
                                    <label class="mb-3 block text-base font-medium text-[#0e0e19df]">Select an Answer: </label>
                                    <select id="category" defaultValue="DEFAULT" class="w-full resize-none rounded-md mb-3 border border-[#e0e0e0] bg-white py-3 px-6 text-base font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md">
                                        <option value="DEFAULT" disabled hidden>select an answer</option>
                                        {choices}
                                    </select>   
                        </div>
                    </div>
    })

    return(
        <div class="bg-[#9ea1b6] grid relative left-40 top-10">  
            <div className="fixed left-1/2 top-35 text-center my-5">
                <div className="radial-progress" style={{"--value":70}}>70%</div>
                <p className="py-2">Progress</p>
            </div>
            <div className="fixed left-1/2 top-60 text-center my-5">
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