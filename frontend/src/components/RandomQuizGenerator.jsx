import React, {useState} from "react";


const RandomQuizGenerator = ({user}) => {

    const [quizSettings, setQuizSettings] = useState({difficulty: "Easy", length: 10 , category: "", title: "", description: "",  image_url: "", author_id: ""})
    const [difficultyNum, setDifficultyNum] = useState(1)
    const [optionsSubmitted, setOptionsSubmitted] = useState(false)
    
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
            default: newSettings.length = selection
        }
        setQuizSettings(newSettings)
    } 

    const handleCategorySelect = (e) => {
        let newSettings = {...quizSettings}
        newSettings.category = e.target.id
        setQuizSettings(newSettings)
    }

    const handleOptionSubmit = () => {
        setOptionsSubmitted(true)
    }

    return (
        <div>
            <div className="grid grid-cols-1 w-1/2 relative left-1/4">
                <span className="text-white relative justify-self-center text-l py-5"></span>
            </div>
            <div className="form-control card w-1/2 relative left-1/4 bg-secondary text-neutral-content border border-white">
                <span className="card-title p-3 self-center text-xl">Hi, <span className="text text-primary">{user.username}</span><span>, welcome to the Randomizer!</span></span>
                <label className="text-center">This tool will pull a random selection of questions that match your criteria</label>
                <label className="self-center">Select options to get started: </label>
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
                    <input onChange={handleSlider} value={quizSettings.length} type="range" min="5" max="30" className="range" step="5" />
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
                <button onClick={handleOptionSubmit} className="btn btn-primary my-2 self-center"> Take a Random Quiz: </button>
            </div> 
        </div>
    )
}

export default RandomQuizGenerator