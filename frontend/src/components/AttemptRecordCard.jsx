import React from "react";
import { Link } from "react-router-dom";
import ImageCollection from "../assets/icons/ImageCollection";

const AttemptRecordCard = ({user, quiz, score, date}) => {
    
    const takenOn = new Date(date)
    
    return (
        <div className="card md:card-side bg-secondary shadow-xl my-8 max-h-80">
            <figure className="w-1/2"><img src='https://static.vecteezy.com/system/resources/previews/003/206/208/original/quiz-time-neon-signs-style-text-free-vector.jpg' alt="Album"/></figure>
            <div className="card-body w-11/12">
                <div className="text-neutral-content grid grid-cols-4">
                    <div className="relative col-span-2">
                        <p className="card-title inline-flex underline relative center-self">{quiz.title}</p>
                        <div className="content-center">
                            <p className="text-s inline-flex">category: {quiz.questions[0].category}</p><br/>
                            <p className="text-s inline-flex">difficulty: {quiz.category}</p>
                        </div>
                    </div>
                    <div className=" text-center content-center h-full relative -left-8">
                        <div className='divider divider-horizontal'/>
                        <p className='relative text-center'>created by:</p>
                        <p className='text text-primary'>{quiz.author.username}</p>
                    </div>
                    <label className="btn btn-ghost btn-circle btn-xl avatar relative left-10">
                            <div className="w-10 rounded-full bg-white">
                                <img src={ImageCollection[`${quiz.author.image_url}`]} alt="User Image" />
                            </div>
                    </label> 
                </div>
                <div className="divider my-3 text-white"></div>
                <div className="grid grid-cols-2 text-neutral-content">
                    <div>
                        <span>Your score: </span>
                        <span className="text text-3xl text-green-500 pl-6" >{score}/{quiz.question_count}</span>
                        <div>
                            <p>Attempted on: </p>
                            <p>{takenOn.toLocaleDateString('en-us', { weekday:"long", year:"numeric", month:"short", day:"numeric"})} @ {takenOn.toLocaleTimeString('en-US')}</p>
                        </div>
                        <div className="card-actions my-4">
                        <Link to={`/quizpage/${quiz.id}`} className="btn btn-primary btn-md relative left-1/3">Try Again? </Link>
                        </div>
                    </div>

                    
                    <div>
                        <label className="label underline pt-0">Author's Description:</label>                    
                        <p className="w-5/6">{quiz.description}</p>
                    </div>
                    
                </div>
            </div>
        </div>
    )
}

export default AttemptRecordCard