import React from "react";
import { useQuery } from "@tanstack/react-query";
import QuizCard from "./QuizCard";

const Home = () => {

    // Setting up useQuery
    // In the first argument we are naming/identifying the specific data we are fetching here
    // in order to reference it later for refetch, etc.
    // The second argument is the function that will perform the fetch and set the data
    const {data, isLoading, isError, refetch} = useQuery(["quizzes"], () => {
        return fetch("http://[::1]:4000/quizzes")
               .then(res => res.json())
               .then(data => data)
    })


    let quizCards = data?.map((quiz) => {
        return <QuizCard key={quiz.id} quiz={quiz}/>
    })

    console.log(data)

    return(
        <div className="relative w-5/6 left-20">
            <h1>Hello from Home</h1>
            {quizCards}
        </div>
    )
}

export default Home