import React from "react";
import { Link } from "react-router-dom";

const QuizCard = ({quiz}) => {
    
    return (
        <div className="card md:card-side bg-secondary shadow-xl my-8 max-h-80">
            <figure><img src="https://placeimg.com/400/400/arch" alt="Album"/></figure>
            <div className="card-body w-3/4">
                <div className="grid grid-cols-2">
                    <Link to={`/quizpage/${quiz.id}`} className="card-title underline">{quiz.title}</Link>
                    <div>
                        <span>created by: {quiz.author.username}</span>
                        <label className="btn btn-ghost btn-circle avatar">
                            <div className="w-10 rounded-full">
                                <img src={quiz.author.image_url} alt="User Image" />
                            </div>      
                        </label>
                    </div>
                </div>
                <div className="grid-cols-2">
                    <span className="text-xs relative">category: {quiz.category}</span>
                    <span className="text-xs relative">difficulty: {quiz.questions[0]['difficulty']}</span>
                </div>
                <span className="w-5/6">{quiz.description}</span>
                <div className="card-actions my-4">
                    <Link to={`/quizpage/${quiz.id}`} className="btn btn-primary btn-md align-self-end relative left-10">Try Your Luck</Link>
                </div>
            </div>
        </div>
    )
}

export default QuizCard