import React, { useState, useEffect } from "react";
import { useQuery } from '@tanstack/react-query'
import AttemptRecordCard from "./AttemptRecordCard";
import ImageCollection from "../assets/icons/ImageCollection";
import AuthoredQuizCard from './AuthoredQuizCard'

const ProfilePage = () => {

    const {data: quizData} = useQuery(['quizzes'])
    const {data: attemptData } = useQuery({queryKey: ['attempts'],refetchOnWindowFocus: false})
    const {data: userData} = useQuery(['currentUser'])
    const [myAttempts, setMyAttempts] = useState([])

    //Button toggle to show attempt history: 
    const [detailVisible, setDetailVisible] = useState({attemptHistory: false, authoredHistory: false})
    const toggleAttemptDisplay = () => setDetailVisible({attemptHistory: !detailVisible.attemptHistory, authoredHistory: false})
    const toggleAuthoredDisplay = () => setDetailVisible({attemptHistory: false, authoredHistory: !detailVisible.authoredHistory})
    
    let pointTotal = 0
    //Totalling the score from all attempts. 
    userData.attempts.forEach((attempt) => {
        pointTotal = pointTotal + attempt.score
    })

    //using a function to filter down to only current user. I would have prefered to do this in the API, but I have to move quickly RN
    useEffect(() => {
        let toFilter = []
        if(attemptData){
            toFilter = [...attemptData]
            setMyAttempts(() => toFilter.filter((attempt) => attempt.user.id == userData.id))
        }
    }, [attemptData]);

    //Create a card to represent each attempt: 
    const attemptStack = myAttempts.map((attempt, index) => {
        let quiz = quizData.find(n => n.id == attempt.quiz.id)
        return <AttemptRecordCard 
                key={`${userData.username}_attempt_${index}`}
                user={attempt.user}
                quiz={quiz}
                score={attempt.score}/>
    })

    //Find the quizzes where the author matches the user id: 
    const authoredStack = userData.quizzes.map(q => {
    return <AuthoredQuizCard key={`${userData.username} ${q.title}`} quiz={q} author={userData}/> 
    })
   
    console.log(authoredStack)

    return (
        <>
        <link rel="stylesheet" href="https://demos.creative-tim.com/notus-js/assets/styles/tailwind.css"/>
        <link rel="stylesheet" href="https://demos.creative-tim.com/notus-js/assets/vendor/@fortawesome/fontawesome-free/css/all.min.css"/>
        <section className="relative flex h-80">
            <div className="absolute top-0 w-full h-full bg-center bg-cover" >
                <span id="blackOverlay" className="w-full h-full absolute opacity-80 bg-secondary"></span>
            </div>
            <div className="top-auto bottom-0 left-0 right-0 w-full absolute pointer-events-none overflow-hidden h-70-px">
                <svg className="absolute bottom-0 overflow-hidden" xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 2560 100" x="0" y="0">
                    <polygon className="text-blueGray-200 fill-current" points="2560 0 2560 100 0 100"></polygon>
                </svg>
            </div>
        </section>
        <section className="relative py-16 bg-blueGray-200">
            <div className="container mx-auto px-4">
            <div className="relative flex flex-col min-w-0 break-words bg-white w-full mb-6 shadow-xl rounded-lg -mt-64">
                <div className="px-6">
                <div className="flex flex-wrap justify-center">
                    <div className="w-full lg:w-3/12 px-4 lg:order-2 flex justify-center">
                        <div className="relative">
                            <img alt="..." src={ImageCollection[`${userData.image_url}`]} className="shadow-xl rounded-full h-auto align-middle border-none absolute -m-16 -ml-20 lg:-ml-16 max-w-150-px" />
                        </div>
                    </div>
                    <div className="w-full lg:w-4/12 px-4 lg:order-3 lg:text-left lg:self-center">
                    {/* <div className="py-6 px-3 mt-32 sm:mt-0">
                        <button className="bg-pink-500 active:bg-pink-600 uppercase text-white font-bold hover:shadow-md shadow text-xs px-4 py-2 rounded outline-none focus:outline-none sm:mr-2 mb-1 ease-linear transition-all duration-150" type="button">
                        Connect
                        </button>
                    </div> */}
                        <div className="mb-2 text-blueGray-600 mt-5">
                            <i className="fas fa-briefcase mr-2 text-lg text-blueGray-400"></i>First Name
                            <span>{` | ${userData.first_name}`}</span> 
                        </div>
                        <div className="mb-2 text-blueGray-600">
                            <i className="fas fa-university mr-2 text-lg text-blueGray-400"></i>Last Name
                            <span>{` | ${userData.last_name}`}</span>
                        </div>
                    </div>
                    <div className="w-full lg:w-4/12 px-4 lg:order-1">
                    <div className="flex justify-center py-4 lg:pt-4 pt-8">
                        <div className="mr-4 p-3 text-center">
                        <span className="text-xl font-bold block uppercase tracking-wide text-blueGray-600">{userData.quizzes.length}</span><span className="text-sm text-blueGray-400">Created</span>
                        </div>
                        <div className="mr-4 p-3 text-center">
                        <span className="text-xl font-bold block uppercase tracking-wide text-blueGray-600">{userData.attempts.length}</span><span className="text-sm text-blueGray-400">Attempts</span>
                        </div>
                        <div className="lg:mr-4 p-3 text-center">
                        <span className="text-xl font-bold block uppercase tracking-wide text-blueGray-600">{pointTotal}</span><span className="text-sm text-blueGray-400">Total Points</span>
                        </div>
                    </div>
                    </div>
                </div>
                <div className="text-center mt-8">
                    <h3 className="text-4xl font-semibold leading-normal text-blueGray-700 mb-2">{userData.username}</h3>
                    <div className="text-sm leading-normal mt-0 mb-2 text-blueGray-400 font-bold uppercase">
                    <i className="fas fa-map-marker-alt mr-2 text-lg text-blueGray-400"></i>
                    Denver, Colorado
                    </div>
                    <div className="mb-2 text-blueGray-600 mt-10">
                    <i className="fas fa-briefcase mr-2 text-lg text-blueGray-400"></i>First Name
                    <span>{` | ${userData.first_name}`}</span> 
                    </div>
                    <div className="mb-2 text-blueGray-600">
                    <i className="fas fa-university mr-2 text-lg text-blueGray-400"></i>Last Name
                    <span>{` | ${userData.last_name}`}</span>
                    </div>
                </div>
                <div className="mt-10 py-10 border-t border-blueGray-200 text-center">
                    <p className="text text-inherit pb-4">About me: </p>
                    <div className="flex flex-wrap justify-center">
                    <div className="w-full lg:w-9/12 px-4">
                        <p className="mb-4 text-lg leading-relaxed text-blueGray-700">
                        Mi quis hendrerit dolor magna eget est lorem. Amet luctus venenatis lectus magna. Congue nisi vitae suscipit tellus mauris. Viverra nam libero justo laoreet. Tempus egestas sed sed risus pretium quam. Cras sed felis eget velit aliquet. Nisl pretium fusce id velit ut tortor. Justo eget magna fermentum iaculis eu non diam phasellus vestibulum. Nisl pretium fusce id velit ut tortor. At quis risus sed vulputate odio ut. Sapien eget mi proin sed libero enim. 
                        </p>
                        <p onClick={toggleAttemptDisplay} className="font-normal btn btn-outline hover:bg-emerald-100 text-pink-500 mx-5">Show attempt history </p>
                        <p onClick={toggleAuthoredDisplay} className="font-normal btn btn-outline hover:bg-emerald-100 text-pink-500 mx-5"> My Quizzes </p>
                    </div>
                    </div>
                </div>
                </div>
            </div>
            </div>
            {detailVisible.attemptHistory ? <div>{attemptStack}</div> : null}
            {detailVisible.authoredHistory ? <div>{authoredStack}</div>: null}
        </section>
        </>)
}

export default ProfilePage