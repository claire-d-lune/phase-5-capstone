import React, {useState, useEffect} from "react";
import { useQuery } from "@tanstack/react-query";
import NewQuestionBox from "./NewQuestionBox";
import axios from "axios";
//To render avatars, etc. :
import ImageCollection from "../assets/icons/ImageCollection";

const CreateQuiz = () => {

    const [quizSettings, setQuizSettings] = useState({difficulty: "Easy", questionCount: 10 , category: "", title: "", description: "",  image_url: ""})
    const [difficultyNum, setDifficultyNum] = useState(1)
    const {data: userData} = useQuery(['currentUser'])
    
    //Event handlers for forms. 
    const handleSlider = (e) => {   
        let newSettings = {...quizSettings}
        let selection = parseInt(e.target.value) 
        switch(selection) { 
            case 1: setDifficultyNum(selection)
                newSettings.difficulty = 'Easy'; 
            break
            case 2: setDifficultyNum(selection)
                newSettings.difficulty = 'Medium'; 
            break 
            case 3: setDifficultyNum(selection)
                newSettings.difficulty = 'Hard'; 
            break
            default: newSettings.questionCount = selection
        }
        setQuizSettings(newSettings)
    } 

    const handleCategorySelect = (e) => {
        let newSettings = {...quizSettings}
        newSettings.category = e.target.id
        setQuizSettings(newSettings)
    }

    const handleInputText = (e) => {
        let newSettings = {...quizSettings}
        newSettings.title = e.target.value
        setQuizSettings(newSettings)
    }

    // Implementing selected options below, after submitting choices. I'm going to use this to trigger the card render after the user submits options. 
    const [questionFormStack, setQuestionFormStack] = useState([])
    // This array below will contain all of the quiz questisons as they are filled out. 
    const [questionArray, setQuestionArray]  = useState([])
    // When the options are submitted the array is populated -- to be filled in via forms. Submitting fills the questions Array with 'undefined' to begin. 
    const handleOptionSubmit = () => {
        if((quizSettings.category === "") || (quizSettings.title === "")) alert("You must fill out the title and category to proceed.")
        else {
            //creating an array of equal length to the question count, to return one for each
            let blankQuestionArray = [...Array(quizSettings.questionCount)]
            console.log(blankQuestionArray)
            setQuestionArray(blankQuestionArray)
        }
    } 

    useEffect(() => {
        let newFormStack = questionArray.map((q , index) => {
            return <NewQuestionBox key={`questionBox_${index}`}
                    category={quizSettings.category} 
                    index={index}
                    title={quizSettings.title}
                    difficulty={quizSettings.difficulty}
                    questionArray={questionArray}
                    setQuestionArray={setQuestionArray}/>})
        setQuestionFormStack(newFormStack)
    }, [questionArray]);

    // Submit function for the quiz itself: 
    const submitQuiz = () => {
        //filtering for filled entries to confirm every question has been filled in. 
        let postQuestions = questionArray.filter(n => n)
        if (postQuestions.length != questionArray.length) {
            alert('You must fill out each question for proceed')
            return
        } 
        axios.post('/api/quizzes', {
            author_id: userData.id,
            title: quizSettings.title,
            category: quizSettings.category,
            description: quizSettings.description,
            image_url: quizSettings.image_url
        })
        .then((res) => {
            let quizId = res.data.id
            postQuestions.forEach((question) => {
                // Post each Question: 
                axios.post('api/questions', {...question})
                .then(res => {
                    let questionId = res.data.id
                    //Link data via quiz questions link table
                    axios.post('/api/quiz_questions', {question_id: questionId, quiz_id: quizId, weight: 1})
                    .then(res => console.log(res.data))
                })
            })
        })
    }
     
    return (
        // If the question stack has not been populated I will display an options form
        // If the stack *has* been populated (this takes place after options are submitted), then I will instead render the stack of forms and a button to submit the quiz. 
        questionFormStack.length === 0 ? 
        <div>
            <div className="grid grid-cols-1 w-1/2 relative left-1/4">
                <span className="text-white relative justify-self-center text-l py-5"></span>
            </div>
            <div className="form-control card w-1/2 relative left-1/4 bg-secondary text-neutral-content border border-white">
                    <span className="card-title p-3 self-center text-xl">Hi, <span className="text text-primary">{userData.username}</span><span>, welcome to create a quiz!</span></span>
                <label className="self-center">Select options for your quiz to get started: </label>
                <div className="divider"></div>
                <div className="w-2/3 text-center self-center pb-3">
                    <label>Enter a Title:</label>
                    <input onChange={handleInputText} type="text" placeholder="Type here ..." className="input input-bordered w-full max-w-full bg-inherit mt-2 text-center" />
                </div>
                <div className="divider "></div>  {/* Category Select:  */}
                <div className="w-full text-center self-center pb-3">
                    <p>Select a Category:</p>
                    <div className="dropdown dropdown-bottom self-center">
                        <label tabIndex={0} className="btn m-2">Choose Category &#9660;</label>
                        {quizSettings.category === "" ? null : <button tabIndex={0} className="btn btn-outline-secondary gap-2 m-2 absolute">{quizSettings.category}</button>}
                        <div tabIndex={0} className="dropdown-content menu btn-group btn-group-vertical p-2 shadow bg-base-100 rounded-box w-52">
                            <input type="radio" name="category" onClick={handleCategorySelect} className="btn" id= "Film" data-title='Film'/>
                            <input type="radio" name="category" onClick={handleCategorySelect} className="btn" id= "History" data-title='History'/>
                            <input type="radio" name="category" onClick={handleCategorySelect} className="btn" id= "Nature & Science" data-title='Nature & Science'/>
                            <input type="radio" name="category" onClick={handleCategorySelect} className="btn" id= "Music" data-title='Music'/>
                            <input type="radio" name="category" onClick={handleCategorySelect} className="btn" id= "Video Games" data-title='Video Games'/>
                        </div>
                    </div>
                </div>
                <div className="divider "></div> {/* Difficulty Slider:  */}
                <div className="w-2/3 text-center self-center">
                    <label>Select a Difficulty: </label>
                    <input 
                        onChange={handleSlider} 
                        type="range" min="1" max="3" className="range" step="1"
                        value={difficultyNum}
                    />
                    <div className="w-full flex justify-between text-xs px-2">
                        <span>Easy</span>
                        <span>Medium</span>
                        <span>Hard</span>
                    </div>
                </div>
                <div className="divider"></div> {/* Question Count Slider:  */}
                <div className="w-2/3 text-center self-center">
                    <label>Select Number of Questions: </label>
                    <input onChange={handleSlider} value={quizSettings.questionCount} type="range" min="5" max="30" className="range" step="5" />
                    <div className="w-full flex justify-between text-xs px-2">
                        <span>5</span>
                        <span>10</span>
                        <span>15</span>
                        <span>20</span>
                        <span>25</span>
                        <span>30</span>
                    </div>
                </div>
                <div className="divider"></div>
                <button onClick={handleOptionSubmit} className="btn btn-primary my-2 self-center"> Create Your Form: </button>
            </div> 
        </div>
        :
        <div className="grid grid-cols-1 w-1/2 relative left-1/4">
            {questionFormStack}
            <button onClick={submitQuiz} className="btn btn-secondary self-center mb-5"> Submit Your Quiz: </button>
        </div>
    )



    //Some helper functions for the posts, to clean up and clarify the main section. I will return to this. I have to focus on MVP today. 
    // const postQuestion = (author_id) => {

    // }

    // const postQuizQuestion = () => {

    // }
}

export default CreateQuiz;