import React, {useState} from "react";
import { useQuery } from "@tanstack/react-query";
import QuizCard from "./QuizCard";
import axios from "axios";

const Home = () => {

    // Setting up useQuery
    // In the first argument we are naming/identifying the specific data we are fetching here
    // in order to reference it later for refetch, etc.
    // The second argument is the function that will perform the fetch and set the data
    const {data, isLoading, isError} = useQuery({
        queryKey: ["quizzes"], 
        queryFn: () => axios("/api/quizzes").then(res => res.data), 
        //I can't figure out why these options seem to be ignored. 
        refetchOnWindowFocus: false,
    })

    //Creating search and the filters (category and difficulty)
    const [selectedCategory, setCategory] = useState("all")
    const [selectedDifficulty, setDifficulty] = useState({easy: true, medium: true, hard: true})
    const [searchTerm, setSearchTerm] = useState("")

    //Filter-style search by title
    const handleSearchForm = (e) => {
        setSearchTerm(e.target.value)
    }

    const handleCategorySelect = (e) => {
        setCategory(e.target.value.toLowerCase())
    }

    const handleDifficultySelect = (e) => {
        let newSelection = {...selectedDifficulty}
        newSelection[e.target.id] = e.target.checked
        setDifficulty(newSelection)
    }
    
    console.log(selectedCategory)

  
    // Here I am creating a select option for each unique category of quiz instead of creating each manually
    // This will scale better as I add new ones. 
    let categoryOptions = data?.map((quiz) => quiz.category)
    // converting to a set to eliminate duplicates: 
    categoryOptions = [...new Set(categoryOptions)]
    // creating actual JSX element from each option:
    categoryOptions = categoryOptions.map((category) => {
        return  <li key={category + "_li"} id={category}>
                    <p> {category} </p>
                </li>
    })

    //Using the filters on my data below: 
    let quizList = data?.filter((quiz) => quiz.title.toLowerCase().includes(searchTerm.toLowerCase()))
    //Category: 



    let quizCards = quizList?.map((quiz) => {
        return <QuizCard key={quiz.id} quiz={quiz}/>
    })


    console.log("Difficulties: ")
    console.log(selectedDifficulty)

    // Rendered elements here:
    return(
        <>
        {/* Search: */}
        <div className="relative w-auto left-1/4 mt-2" >
            <div className="inline-flex">
                <input onChange={handleSearchForm} type="text" id="searchbar" placeholder="Search…" className="input input-bordered" value={searchTerm} />
                <button className="btn btn-square">
                <svg xmlns="http://www.w3.org/2000/svg" className="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" /></svg>
                </button>
            </div>
            {/* <div onChange={handleCategorySelect} className="inline-flex">
                <select className="select select-bordered">
                    <option disabled selected>Select a difficulty</option>
                    <option>Any</option>
                    <option>Easy</option>
                    <option>Medium</option>
                    <option>Hard</option>
                </select>
                <button className="btn">Go</button>
            </div> */}
            {/* <div className="inline-flex">
                <div onChange={handleDifficultySelect} className="dropdown">
                    <label tabIndex={0} className="btn m-1">{"Select difficulty" + " "} &#9660;</label>
                    <div tabIndex={0} className="dropdown-content menu p-2 shadow bg-base-100 rounded-box w-52 form-control">
                        <li>
                            <div>
                                <p>Easy  </p><input type="checkbox" className="toggle toggle-success"/>
                            </div>
                        </li>
                        <li>
                            <div><p>Medium</p><input type="checkbox" className="toggle toggle-warning"/></div>
                        </li>
                        <li>
                            <div><p>Hard</p><input type="checkbox" className="toggle toggle-error"/></div>
                        </li>
                        <li><p>Any</p></li>
                        
                        <li></li>
                        <input type="checkbox" className="toggle toggle-info" checked />
                    </div>
                    
                </div>
            </div> */}
            <div className="inline-flex">
                <div onChange={handleDifficultySelect} className="dropdown">
                    <label tabIndex={0} className="btn m-1">{"Select difficulty  " + " "} &#9660;</label>
                    <div tabIndex={0} className="dropdown-content menu p-2 shadow bg-base-100 rounded-box w-52 form-control">
                        <div className="flex flex-col">
                            <div className="form-control w-52">
                                <label className="cursor-pointer label">
                                <span>Easy</span> 
                                <input type="checkbox" className="toggle toggle-success" id="easy" defaultChecked={selectedDifficulty.easy}/>
                                </label>
                            </div>
                            <div className="form-control w-52">
                                <label className="cursor-pointer label">
                                <span className="label-text">Medium</span> 
                                <input type="checkbox" className="toggle toggle-warning" id="medium" defaultChecked={selectedDifficulty.medium}/>
                                </label>
                            </div>
                            <div className="form-control w-52">
                                <label className="cursor-pointer label">
                                <span className="label-text">Hard</span> 
                                <input type="checkbox" className="toggle toggle-error" id="hard" defaultChecked={selectedDifficulty.hard}/>
                                </label>
                            </div>
                            <div className="form-control w-52">
                                <label className="cursor-pointer label">
                                <span className="label-text">All</span> 
                                <input type="checkbox" className="toggle" id="all" defaultChecked/>
                                </label>
                            </div>
                    </div>
                    </div>
                </div>
            </div>
            <div className="inline-flex">
                <div onChange={handleCategorySelect} className="dropdown">
                    <label tabIndex={0} className="btn m-1">{"Select a Category  " + " "} &#9660;</label>
                    <ul tabIndex={0} className="dropdown-content menu p-2 shadow bg-base-100 rounded-box w-52">
                        {/* <li><p>easy</p></li>
                        <li><p>medium</p></li>
                        <li><p>hard</p></li> */}
                        <li><p>All</p></li>
                        {categoryOptions}
                    </ul>
                </div>
            </div>
        </div>
        {/* Category: */}
        <div className="relative w-3/4 left-36">
            {quizCards}
        </div>
        </>
    )
}

export default Home