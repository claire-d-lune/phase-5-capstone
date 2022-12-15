import React from "react";
import { useQuery } from "@tanstack/react-query";

const Home = () => {
    // Setting up useQuery
    // In the first argument we are naming/identifying the specific data we are fetching here
    // in order to reference it later for refetch, etc.
    // The second argument is the function that will perform the fetch and set the data

    const {data, } = useQuery(["quizzes"], () => {
        return fetch("/api/quizzes")
               .then(res => res.json())
    })


    return(
        <div>
            
        </div>
    )
}

export default Home