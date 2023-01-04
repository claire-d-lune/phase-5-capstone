import React, {useState} from "react";
import { useQuery } from "@tanstack/react-query";

const CreateQuizOptions = () => {

    const [quizSettings, setQuizSettings] = useState({difficulty: "Easy", questionCount: 10 , category: ""})
    const {data: userData} = useQuery(['currentUser'])
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

    console.log('quizSettings')
    console.log(quizSettings)
    // console.log('other quizSettings')
    // let otherQS = {...quizSettings}
    // console.log(otherQS)
    


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
            
            <div className="w-2/3 text-center self-center">
                <label>Select a Category: </label>
                <select className="select bg-inherit w-2/3">
                        <option disabled defaultValue>Pick a Category: </option>
                        <option id="film">Film</option>
                        <option id="history">History</option>
                        <option id="unicorn">Nature & Science</option>
                        <option id="spyglass">Investigator</option>
                </select>
            </div>
            
        </div>
        <button className="btn">Create Your Form: </button>
        </>
    )
}

export default CreateQuizOptions