import React, {useState} from "react";
import axios from "axios";
import { useQuery } from "@tanstack/react-query";
import ImageCollection from "../assets/icons/ImageCollection";

const Leaderboard = () => {

    const { data: attemptData, isLoading } = useQuery(["attempts"])
    const { data: leaderboard } = useQuery({
        queryKey: ['leaderboard'], 
        queryFn: () => axios("/api/leaderboard").then(res => res.data)
    })

    const rankedStack = leaderboard?.map((user, index) => {
        // return <li><p>{user.username}</p><p>{user.score}</p></li>
        return(
        <tr key={`${user.username}_leader_row`}>
            <th>{Math.abs(index - leaderboard.length)}</th>
            <td className="max-w-auto px-0">
                <label className="btn btn-ghost btn-circle btn-xl avatar">
                    <div className="w-10 rounded-full bg-white">
                        <img src={ImageCollection[`${user.image_url}`]} alt="User Image" />
                    </div>
                </label> 
            </td>
            <td>    
                <p className="inline-flex">{user.username}</p>
            </td>
            <td>{user.score}</td>
            <td>{user.attempts.length}</td>
        </tr>)
    })

    rankedStack?.reverse()

    if(isLoading){
        return <p className='fixed self-center' >Loading...</p>
    }

    return(
        <div className="text-center relative w-3/4 inset-x-52">
            <h2 className="relative object-center">Hello from Leaderboard</h2>
            <div className="tabs">
                <a className="tab tab-bordered">Point Total</a> 
                <a className="tab tab-bordered">Accuracy</a> 
                <a className="tab tab-bordered">By Category</a>
            </div>
            <div className="overflow-x-auto">
                <table className="table table-zebra w-full">
                    <thead>
                    <tr>
                        <th>Rank</th>
                        <th className="px-0"></th>
                        <th>Username</th>
                        <th>Total Score</th>
                        <th>Quizzes taken</th>
                    </tr>
                    </thead>
                    <tbody>
                        {rankedStack}
                    </tbody>
                </table>
            </div>
            
        </div>
    )
}

export default Leaderboard