import React,{ useState, useNavigate } from "react";
import { Link } from 'react-router-dom';
import axios from "axios";

const Signup = () => {

    const [formData, setFormData] = useState({
        username: "",
        password: "",
        password_confirmation: ""
    })

    const handleFormChange = (e) => {
        const newForm = {...formData}
        newForm[e.target.id] = e.target.value
        setFormData(newForm)
    }

    console.log(formData)

    const handleNewSignup = (e) => {
        axios.post("/api/signup", formData).then(res => res.data).then(data => console.log(data))

    } 

    return(
       
        <>
        <div className="hero min-h-screen bg-base-200">
            <div className="hero-content flex-col lg:flex-row">
                <div className="text-center lg:text-left">
                    <h1 className="text-5xl font-bold">Signup for a new account!</h1>
                    <p className="py-6">Sign up to record your quiz results and create your own for others to try!</p>
                </div>
                <div className="card flex-shrink-0 w-full max-w-sm shadow-2xl bg-base-100">
                    <div className="card-body">
                        <div className="form-control">
                            <label className="label">
                                <span className="label-text">Username</span>
                            </label>
                            <input type="text" onChange={handleFormChange} id="username" placeholder="username" className="input input-bordered" />
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
                            <input type="text" onChange={handleFormChange} id="confirm_password" placeholder="confirm password" className="input input-bordered" />
                        </div>
                        <div className="form-control mt-6">
                        <button onClick={handleNewSignup} className="btn btn-primary">Signup here!</button>
                        <label className="label justify-center">
                            <Link to="/signup" className="label-text-alt link link-hover">Sign Up</Link>
                        </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </>
        // <div className="bg-grey-lighter min-h-screen flex flex-col">
        //             <div className="container max-w-sm mx-auto flex-1 flex flex-col items-center justify-center px-2">
        //                 <div className="bg-white px-6 py-8 rounded shadow-md text-black w-full">
        //                     <h1 className="mb-8 text-3xl text-center">Sign up</h1>
        //                     <input 
        //                         type="text"
        //                         className="block border border-grey-light w-full p-3 rounded mb-4"
        //                         name="fullname"
        //                         placeholder="Full Name" />

        //                     <input 
        //                         type="text"
        //                         className="block border border-grey-light w-full p-3 rounded mb-4"
        //                         name="email"
        //                         placeholder="Email" />

        //                     <input 
        //                         type="password"
        //                         className="block border border-grey-light w-full p-3 rounded mb-4"
        //                         name="password"
        //                         placeholder="Password" />
        //                     <input 
        //                         type="password"
        //                         className="input input-bordered"
        //                         name="confirm_password"
        //                         placeholder="Confirm Password" />

        //                     <button
        //                         type="submit"
        //                         className="btn btn-primary"
        //                     >Create Account</button>

        //                     {/* <div className="text-center text-sm text-grey-dark mt-4">
        //                         By signing up, you agree to the 
        //                         <a className="no-underline border-b border-grey-dark text-grey-dark" href="#">
        //                             Terms of Service
        //                         </a> and 
        //                         <a className="no-underline border-b border-grey-dark text-grey-dark" href="#">
        //                             Privacy Policy
        //                         </a>
        //                     </div> */}
        //                 </div>

        //                 <div className="text-black-dark mt-6">
        //                     Already have an account? 
        //                     <a className="no-underline border-b border-blue text-blue" href="../login/">
        //                         Log in
        //                     </a>.
        //                 </div>
        //             </div>
        //         </div>
    )
}

export default Signup