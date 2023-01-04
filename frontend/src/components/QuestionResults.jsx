import React from "react";

const QuestionResults = ({question, number, isCorrect}) => {

    console.log(isCorrect)

    return isCorrect ? 
                <div className="card w-4/5 place-self-center bg-green-400 text-content my-4">
                    <div className="card-body items-center text-left pt-4">
                        <div className="divider my-2">{number}</div>
                        <p>{question.category}</p>
                        <h2 className="card-title">{`${question.question}`}</h2>
                            <h2 className="text-white">Correct</h2>
                            <label> The Correct Answer is: </label>
                            <p className="text-content mr-5">{question.correct_answer}  </p>                           
                    </div>
                </div> : 
                <div className="card w-4/5 place-self-center bg-red-400 text-content my-4">
                    <div className="card-body items-center text-left pt-4">
                        <div className="divider my-2">{number}</div>
                        <p>{question.category}</p>
                        <h2 className="card-title">{`${question.question}`}</h2>
                        <h2 className="text-white">Incorrect</h2>
                        <label> The Correct Answer is: </label>
                        <span className="text-content text-white mr-5">{question.correct_answer}  </span> 
                    </div>
                </div>
}

export default QuestionResults