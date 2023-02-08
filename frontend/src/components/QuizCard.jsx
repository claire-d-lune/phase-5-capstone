import React from "react";
import { Link } from "react-router-dom";
//To render avatars, etc. :
import ImageCollection from "../assets/icons/ImageCollection";

const QuizCard = ({quiz}) => {

    let categoryImages = {
        film: 'https://d3rg18dos0rgue.cloudfront.net/wp-content/uploads/sites/9/2022/05/About-Section-right-image-Roxy-Cinema-Website_2000x2000-copy.jpg',
        history: 'https://ce.byu.edu/sites/ce.byu.edu/files/program_images/10084301.jpg',
        music: 'https://static01.nyt.com/images/2018/04/23/opinion/17Hoffman/17Hoffman-superJumbo.jpg',
        natSci: 'https://loopchicago.com/assets/Tourism-Operators/images/77d7d37cc7/Museum20of20Science20and20Industry_2__FillWzEyMDAsMTIwMF0.jpg',
        videoGames: 'https://i.icanvas.com/list-square/super-mario-bros-AJT216.jpg',
        default: 'https://static.vecteezy.com/system/resources/previews/003/206/208/original/quiz-time-neon-signs-style-text-free-vector.jpg'
    }

    let displayImage
    // This switch is the simplest way I could think to convert from the category strings to appropriate indexes (I couldn't use category as index, since many have spaces, etc.) with more time to refactor, I could make this look cleaner/more scaleable. 
    switch(quiz.category.toLowerCase()) {
        case 'film': displayImage = categoryImages.film; break
        case 'history': displayImage = categoryImages.history; break;
        case 'music': displayImage = categoryImages.music; break;
        case 'nature & science': displayImage = categoryImages.natSci; break;
        case 'video games': displayImage = categoryImages.videoGames; break;
        default : displayImage = categoryImages.default;
        // I am storing the original default link here in this comment, in case I end up preffering it as a default "https://placeimg.com/400/400/arch"
    }
    
    return (
        <div className="card md:card-side bg-secondary shadow-xl my-8 max-h-80">
            <figure className="w-1/2"><img src={displayImage} alt="Album"/></figure>
            <div className="card-body w-11/12">
                <div className="text-neutral-content grid grid-cols-4">
                    <div className="relative col-span-2">
                        <Link to={`/quizpage/${quiz.id}`} className="card-title inline-flex underline relative center-self">{quiz.title}</Link>
                        <div className="content-center">
                            <p className="text-s inline-flex">category: {quiz.category}</p><br/>
                            <p className="text-s inline-flex">difficulty: {quiz.difficulty}</p>
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
                <span className="w-5/6">{quiz.description}</span>
                <div className="card-actions my-4">
                    <Link to={`/quizpage/${quiz.id}`} className="btn btn-primary btn-md relative left-1/3">Try Your Luck</Link>
                </div>
            </div>
        </div>
    )
}

export default QuizCard