import React,{ useState } from "react";
import { Link, useNavigate } from 'react-router-dom';
import axios from "axios";

const Signup = ({setCurrentUser}) => {

    const [formData, setFormData] = useState({
        username: "",
        password: "",
        password_confirmation: "",
        image_url: ""
    })

    const avatarImages = {
        viking: "https://img.freepik.com/free-vector/viking-character-ancient-scandinavian-warrior-with-sword-wooden-shield-with-snake-emblem-vector-cartoon-illustration-medieval-barbarian-horned-helmet-isolated-background_107791-9242.jpg?w=900&t=st=1671749509~exp=1671750109~hmac=a7aea410c42302f21d6a2f64fd8576a81000bbb35a67d92d9e5686f1f8b034dc",
        robot: "https://img.freepik.com/free-vector/vintage-robot-toy-white-background_1308-77501.jpg?w=2000",
        investigator: "https://img.freepik.com/free-photo/cozy-portrait-young-woman-knitted-blue-sweater-pink-hat-with-bright-makeup-holding-magnifying-glass-fooling-around-having-fun_343596-7383.jpg?w=1060&t=st=1671749585~exp=1671750185~hmac=cfbff7056a03c5e98e6a34297a4be9a734bff756d191eb8a67b58865f1dfef30",
        unicorn: "https://img.freepik.com/free-vector/hand-drawn-unicorn-background_52683-9808.jpg?w=740&t=st=1671749433~exp=1671750033~hmac=4187ef816077d3f3bf7631d6bb5a26693baa937c6204cb2077c006a3344edf85"
    }

    const [displayAvatar, setDisplayAvatar] = useState(avatarImages.robot)

    const handleAvatarSelect = (e) => {
        let choice = e.target.value.toLowerCase()
        setDisplayAvatar(avatarImages[choice])
        formData.image_url = avatarImages[choice]
        console.log(e.target.value)
        console.log(choice)
    }

    const handleFormChange = (e) => {
        const newForm = {...formData}
        newForm[e.target.id] = e.target.value
        setFormData(newForm)
    }
    console.log(formData)
    
    //Setting up a navigate function to redirect after succesful sign up
    const navigate = useNavigate() 
    const handleNewSignup = (e) => {
        e.preventDefault()//This line is only neccesary when submitted via keyboard command instead of button
        axios.post("/api/signup", formData, {validateStatus: (status) => {return status === 201;}})
            .then(res => setCurrentUser(res.data)).then(() => navigate("/home"))
    } 

    return(
        <div className="hero min-h-screen bg-base-200">
            <div className="hero-content flex-col lg:flex-row">
                <div className="text-center lg:text-left">
                    <h1 className="text-5xl font-bold">Signup for a new account!</h1>
                    <p className="py-6">Sign up to record your quiz results and create your own for others to try!</p>
                </div>
                {/* Form */}
                <div className="card flex-shrink-0 w-full max-w-sm shadow-2xl bg-base-100">
                    <form onSubmit={handleNewSignup} className="card-body">
                        <div className="form-control">
                            <label className="label">
                                <span className="label-text">Username</span>
                            </label>
                            <input type="text" onChange={handleFormChange} id="username" placeholder="username" className="input input-bordered" />
                        </div>
                        <div className="form-control w-full max-w-xs">
                            <label className="label">
                                <span className="label-text">Select an Avatar: </span>
                            </label>
                            <div>
                                <select onChange={handleAvatarSelect} className="select select-bordered w-2/3">
                                    <option disabled selected>Pick one</option>
                                    <option id="viking">Viking</option>
                                    <option id="robot">Robot</option>
                                    <option id="unicorn">Unicorn</option>
                                    <option id="spyglass">Investigator</option>
                                </select>
                                <label tabIndex={0} className="relative left-10 top-4 btn btn-ghost btn-circle avatar">
                                    <div className="w-20 rounded-full">
                                        <img src={displayAvatar} />
                                    </div>
                                </label>
                            </div>
                       
                        </div>
                      
                        <div className="form-control">
                            <label className="label">
                                <span className="label-text">Password</span>
                            </label>
                            <input type="text" onChange={handleFormChange} id="password" placeholder="password" className="input input-bordered" />
                        </div>
                        <div className="form-control">
                            <label className="label">
                                <span className="label-text">Confirm Password</span>
                            </label>
                            <input type="text" onChange={handleFormChange} id="password_confirmation" placeholder="confirm password" className="input input-bordered" />
                        </div>
                        <div className="form-control mt-6">
                            <button onClick={handleNewSignup} className="btn btn-primary">Signup here!</button>
                            <label className="label label-text-alt justify-center mt-4">
                                Already have an account? <Link className="label label-text-alt  link-hover ml-2" to="/login">Log in.</Link>
                            </label>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    )
}

export default Signup