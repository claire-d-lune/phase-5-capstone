import React, {useState} from "react";
import { useQuery } from "@tanstack/react-query";
import QuizCard from "./QuizCard";
import axios from "axios";

const Home = () => {
    // Setting up useQuery
    // In the first argument we are naming/identifying the specific data we are fetching here in order to reference it later for refetch, etc.
    // The second argument is the function that will perform the fetch and set the data
    const { data } = useQuery({
        queryKey: ["quizzes"], 
        queryFn: () => axios("/api/quizzes").then(res => res.data), 
        refetchOnWindowFocus: false,
    })

    console.log(data)

    //Creating search and the filters (category and difficulty)
    const [selectedCategory, setCategory] = useState("all")
    const [selectedDifficulty, setDifficulty] = useState({easy: true, medium: true, hard: true, all: true})
    const [searchTerm, setSearchTerm] = useState("")

    //Filter-style search by title
    const handleSearchForm = (e) => {
        setSearchTerm(e.target.value)
    }

    const handleCategorySelect = (e) => {
        setCategory(e.target.id.toLowerCase())
    }

    const handleDifficultySelect = (e) => {
        let newSelection = {...selectedDifficulty}
        newSelection[e.target.id] = e.target.checked
        setDifficulty(newSelection)
    }
    
    // Here I am creating a select option for each unique category of quiz instead of creating each manually.
    // This will scale better as I add new options via form or seed data. 
    let categoryOptions = data?.map((quiz) => quiz.category)
    categoryOptions = [...new Set(categoryOptions)]         // eliminate duplicates
    categoryOptions = categoryOptions.map((category) => {   // create actual JSX element from each option
        return  <li key={category + "_li"}>
                    <p onClick={handleCategorySelect} id={category}> {category}</p>
                </li>
    })

    //--FILTERS-- Using the filters on my data below: 
    // SEARCH
    let quizList = data?.filter((quiz) => quiz.title.toLowerCase().includes(searchTerm.toLowerCase()))  
    // CATEGORY
    if (selectedCategory != "all"){
        quizList = quizList?.filter((quiz) => quiz.category.toLowerCase() === selectedCategory.toLowerCase())
    }
    // DIFFICULTY (If the specific difficulty is not selected (false) I will filter it out
    // Do nothing if easy is selected, else filter out all easy. So on for the other two difficulties. 
    selectedDifficulty.easy ? null : (quizList = quizList.filter((quiz) => (quiz.questions[0]['difficulty'].toLowerCase() != "easy")))
    selectedDifficulty.medium ? null : (quizList = quizList.filter((quiz) =>(quiz.questions[0]['difficulty'].toLowerCase() != "medium")))
    selectedDifficulty.hard ? null : (quizList = quizList.filter((quiz) => (quiz.questions[0]['difficulty'].toLowerCase() != "hard")))
    //Create a JSX element for each quiz that meets all of the filter requirements
    let quizCards = quizList?.map((quiz) => {
        return <QuizCard key={quiz.id} quiz={quiz}/>
    })
    // Rendered elements here:
    return(
        <div>
            {/* Search */}
            <div className="navbar relative -left-10">
                <div className= "navbar-start"></div>
                <div className="navbar-center inline-flex mx-1">
                    <input onChange={handleSearchForm} type="text" id="searchbar" placeholder="Search…" className="input input-bordered" value={searchTerm} />
                    <button className="btn btn-square">
                    <svg xmlns="http://www.w3.org/2000/svg" className="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" /></svg>
                    </button>
                </div>
                <div className="navbar-center inline-flex">
                    <div onChange={handleDifficultySelect} className="dropdown">
                        <label tabIndex={0} className="btn m-1 gap-2">{"Select difficulty"} <span>&#9660;</span></label>
                        <div tabIndex={0} className="dropdown-content menu p-2 shadow bg-base-100 rounded-box w-52 form-control">
                            <div className="flex flex-col">
                                <div className="form-control w-48">
                                    <label className="cursor-pointer label">
                                    <span>Easy</span> 
                                    <input type="checkbox" className="toggle toggle-success" id="easy" defaultChecked={selectedDifficulty.easy}/>
                                    </label>
                                </div>
                                <div className="form-control w-48">
                                    <label className="cursor-pointer label">
                                    <span className="label-text">Medium</span> 
                                    <input type="checkbox" className="toggle toggle-warning" id="medium" defaultChecked={selectedDifficulty.medium}/>
                                    </label>
                                </div>
                                <div className="form-control w-48">
                                    <label className="cursor-pointer label">
                                    <span className="label-text">Hard</span> 
                                    <input type="checkbox" className="toggle toggle-error" id="hard" defaultChecked={selectedDifficulty.hard}/>
                                    </label>
                                </div>
                                {/* <div className="form-control w-48">
                                    <label className="cursor-pointer label">
                                        <span className="label-text">All</span> 
                                        <input type="checkbox" className="toggle" id="all" defaultChecked={selectedDifficulty.all}/>
                                    </label>
                                </div> */}
                        </div>
                        </div>
                    </div>
                </div>
                <div className="navbar-center inline-flex">
                    <div className="dropdown">
                        {(selectedCategory === 'all') ? <label tabIndex={0} className="btn m-1">{"Select a Category  " + " "} &#9660;</label> : <label tabIndex={0} className="btn m-1">{selectedCategory} &#9660;</label>}
                        <ul tabIndex={0} className="dropdown-content menu p-2 shadow bg-base-100 rounded-box w-52">
                            <li>
                                <p onClick={handleCategorySelect} id="all"> All </p>
                            </li>
                            {categoryOptions}
                        </ul>
                    </div>
                </div>
                <div className= "navbar-end"></div>
            </div>
             {/* Quiz Cards */}
            <div className="relative inset-x-52 w-3/4">
                {quizCards}
            </div>
        </div>
    )
}

export default Home