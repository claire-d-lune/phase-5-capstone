import React, {useState} from "react";

const NewQuestionBox = ({title, category, difficulty, index, questionArray, setQuestionArray}) => {

    console.log(questionArray)

    // I want to use state to record whether or not each question is locked in. When it is, I will pass the question up to an array on the quizpage. 
    const [questionData, setQuestionData] = useState({
        format: 'multi',
        category: category,
        difficulty: difficulty,
        question: '',
        correct_answer: '',
        incorrect_answer_1: '', 
        incorrect_answer_2: '', 
        incorrect_answer_3: '' 
    })
    const [questionConfirmed, setQuestionConfirmed] = useState(false)

    const handleInputText = (e) => {
        let newQuestionData = {...questionData}
        newQuestionData[e.target.id] = e.target.value
        setQuestionData(newQuestionData)
    }

    const handleConfirmQuestion = () => {
        if ((questionData.question == '') || 
            (questionData.correct_answer == '') || 
            (questionData.incorrect_answer_1 == '') || 
            (questionData.incorrect_answer_2 == '') ||
            (questionData.incorrect_answer_2 == '')){
            alert("All fields must be filled to continue"); 
            return
        }
        //If all fields above are filled, set data in the array and change confirmed state to true. 
        let tempQuestionArray = [...questionArray]
        tempQuestionArray[parseInt(index)] = questionData
        setQuestionConfirmed(() => true)
        setQuestionArray(tempQuestionArray)
    }

    return (
        <div className="card w-full place-self-center bg-white text-neutral-content my-4">
            <div className="card-body items-center text-left pt-4">
                <h2 className="card-title text-l text-gray-500">{title}</h2>
                <div className="divider my-2">{index + 1} / {questionArray.length}</div>
                <label className="text-gray-500">Category:</label>
                <p  className="text-gray-500">{category}</p>
                {/* Enter Question Details: */}
                <div className="w-2/3 text-center self-center">
                    <label className="label">
                        <span className="label-text text-l black">Question: </span>
                    </label>
                    <input onChange={handleInputText} id='question' type="text" placeholder="Type question here ..." className="input input-bordered w-full max-w-full bg-inherit text-gray-500" />
                </div>
                <div className="w-2/3 text-center self-center">
                    <label className="label">
                        <span className="label-text text-l black">Correct Answer: </span>
                    </label>
                    <input onChange={handleInputText} id="correct_answer" type="text" placeholder="Type here" className="input input-bordered w-full max-w-full bg-inherit text-gray-500" />
                </div>
                <div className="w-2/3 text-center self-center">
                    <label className="label">
                        <span className="label-text text-l black">Incorrect Answer #1:</span>
                    </label>
                    <input onChange={handleInputText} id="incorrect_answer_1" type="text" placeholder="Type here" className="input input-bordered w-full max-w-full bg-inherit text-gray-500" />
                </div>
                <div className="w-2/3 text-center self-center">
                    <label className="label">
                        <span className="label-text text-l black">Incorrect Answer #2</span>
                    </label>
                    <input onChange={handleInputText} id="incorrect_answer_2" type="text" placeholder="Type here" className="input input-bordered w-full max-w-full bg-inherit text-gray-500" />
                </div>
                <div className="w-2/3 text-center self-center">
                    <label className="label">
                        <span className="label-text text-l black">Incorrect Answer #3</span>
                    </label>
                    <input onChange={handleInputText} id="incorrect_answer_3" type="text" placeholder="Type here" className="input input-bordered w-full max-w-full bg-inherit text-gray-500" />
                </div>
                <div className="divider my-2 pb-4 pt-5"></div>
                {!questionConfirmed ? 
                    <button onClick={handleConfirmQuestion} className="btn btn-secondary">Confirm</button> : 
                    <embed className="w-1/6 h-auto" src="https://upload.wikimedia.org/wikipedia/commons/3/3b/Eo_circle_green_checkmark.svg" alt='✅'/>}
            </div>
        </div>

    )
}

export default NewQuestionBox