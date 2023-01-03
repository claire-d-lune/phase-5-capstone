import React from "react";
import { Link } from "react-router-dom";

const QuizCard = ({quiz}) => {
    
    return (
        <div className="card md:card-side bg-base-100 shadow-xl my-8 max-h-60">
            <figure><img src="https://placeimg.com/400/400/arch" alt="Album"/></figure>
            <div className="card-body">
                <Link to={`/quizpage/${quiz.id}`}>
                    <h2 className="card-title underline">{quiz.title}</h2>
                </Link>
                <span className="text-xs justify-self-end">difficulty: {quiz.questions[0]['difficulty']}</span>
                <div className="card-actions justify-center">
                <Link to={`/quizpage/${quiz.id}`}>
                    <button className="btn btn-primary align-self-end">Try Your Luck</button>
                </Link>
                </div>
            </div>
        </div>
    )
}

export default QuizCard