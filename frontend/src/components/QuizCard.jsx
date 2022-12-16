import React from "react";

const QuizCard = ({quiz}) => {
    
    return (
        <div className="card md:card-side bg-base-100 shadow-xl my-8 max-h-60">
            <figure><img src="https://placeimg.com/400/400/arch" alt="Album"/></figure>
            <div className="card-body">
                <h2 className="card-title underline">{quiz.title}</h2>
                <p>{quiz.description}</p>
                <div className="card-actions justify-end">
                    <button className="btn btn-primary">Try</button>
                </div>
            </div>
        </div>
    )
}

export default QuizCard