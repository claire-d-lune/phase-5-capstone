import React, {useState} from "react";
import { useQuery } from "@tanstack/react-query";
import QuizCard from "./QuizCard";
import axios from "axios";

const Home = () => {

    // Setting up useQuery
    // In the first argument we are naming/identifying the specific data we are fetching here
    // in order to reference it later for refetch, etc.
    // The second argument is the function that will perform the fetch and set the data
    const {data, isLoading, isError, refetch} = useQuery({
        queryKey: ["quizzes"], 
        queryFn: () => axios("/api/quizzes").then(res => res.data), 
        //I can't figure out why these options seem to be ignored. 
        refetchOnWindowFocus: false,
        }
        )

    let quizCards = data?.map((quiz) => {
        return <QuizCard key={quiz.id} quiz={quiz}/>
    })


    //Creating search and the filters (category and difficulty)
    const [selectedCategory, setCategory] = useState('all')
    const [selectedDifficulty, setDifficulty] = useState({easy: true, medium: true, hard: true})
    const [searchTerm, setSearchTerm] = useState("")

    const handleSearchForm = (e) => {
        setSearchTerm(e.target.value)
    }

    const handleCategorySelect = (e) => {
        console.log(e.target.value)
    }




    // Rendered elements below: 
    return(
        <>
        {/* Search: */}
        <div className="relative w-auto left-1/4" >
            <div className="inline-flex">
                <input onChange={handleSearchForm} type="text" id="searchbar" placeholder="Search…" className="input input-bordered" />
                <button className="btn btn-square">
                <svg xmlns="http://www.w3.org/2000/svg" className="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" /></svg>
                </button>
            </div>
            <div onChange={handleCategorySelect} className="inline-flex">
                <select className="select select-bordered">
                    <option disabled selected>Select difficulty</option>
                    <option>T-shirts</option>
                    <option>Mugs</option>
                </select>
                <button className="btn">Go</button>
            </div>
            <div className="inline-flex">
                <div className="dropdown dropdown-right">
                    <label tabIndex={0} className="btn m-1">{"Select a Category  " + " "} &#9660;</label>
                    <ul tabIndex={0} className="dropdown-content menu p-2 shadow bg-base-100 rounded-box w-52">
                        <li><a>Item 1</a></li>
                        <li><a>Item 2</a></li>
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