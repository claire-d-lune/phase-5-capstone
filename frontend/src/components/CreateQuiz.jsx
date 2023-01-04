import React, {useState} from "react";
import { useQuery } from "@tanstack/react-query";

const CreateQuiz = () => {

    const [quizSettings, setQuizSettings] = useState({difficulty: "Easy", questionCount: 10 , category: ""})
    const {data: userData} = useQuery(['currentUser'])
    
    console.log(userData)
    const handleSlider = (e) => {   
        let newSettings = {...quizSettings}
        let selection = parseInt(e.target.value) 
        switch(selection) { 
            case 1: newSettings.difficulty = 'Easy'; 
            break
            case 2: newSettings.difficulty = 'Medium'; 
            break 
            case 3: newSettings.difficulty = 'Hard'; 
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

    console.log('quizSettings')
    console.log(quizSettings)

    return (
        <>
        <p>Welcome to create a quiz!</p>
        <span>{"Hi " + userData.username}</span>
        <div className="form-control w-2/3 relative left-20 bg-[#F6DCD7] text-black">
            <div className="w-2/3 text-center self-center">
                <label>Select a Difficulty: </label>
                <input onChange={handleSlider} type="range" min="1" max="3" className="range" step="1"/>
                <div className="w-full flex justify-between text-xs px-2">
                    <span>Easy</span>
                    <span>Medium</span>
                    <span>Hard</span>
                </div>
            </div>
            <div className="w-2/3 text-center self-center">
                <div className="btn-group">
                    <input type="radio" name="options" data-title="Easy" className="btn" />
                    <input type="radio" name="options" data-title="Medium" className="btn" />
                    <input type="radio" name="options" data-title="Hard" className="btn" />
                </div>
            </div>
            <div className="w-2/3 text-center self-center">
                <label>Select Number of Questions: </label>
                <input onChange={handleSlider} type="range" min="10" max="30" className="range" step="5" />
                <div className="w-full flex justify-between text-xs px-2">
                    <span>10</span>
                    <span>15</span>
                    <span>20</span>
                    <span>25</span>
                    <span>30</span>
                </div>
            </div>
            <div className="dropdown dropdown-bottom self-center">
                <label tabIndex={0} className="btn m-1">Select a Category</label>
                <ul data-theme="garden" tabIndex={0} className="dropdown-content menu p-2 shadow bg-base-100 rounded-box w-52">
                    <li><p onClick={handleCategorySelect} id='Film'>Film</p></li>
                    <li><p onClick={handleCategorySelect} id='History'>History</p></li>
                    <li><p onClick={handleCategorySelect} id='Nature & Science'>Nature & Science</p></li>
                    <li><p onClick={handleCategorySelect} id='Music'>Music</p></li>
                    <li><p onClick={handleCategorySelect} id='Video Games'>Video Games</p></li>
                </ul>
            </div>
            <button className="btn btn-secondary self-center"> Create Your Form: </button>
        </div>
        </>
    )
}

export default CreateQuiz;