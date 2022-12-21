import React from "react";
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

    return(
        <div className="relative w-3/4 left-28">
            <h1 className="justify-center">Hello from Home</h1>
            {quizCards}
        </div>
    )
}

export default Home