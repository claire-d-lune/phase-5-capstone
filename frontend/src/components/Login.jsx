import React, { useState } from "react";
import { Link } from "react-router-dom";
import axios from "axios";


const Login = ({setCurrentUser}) => {

    const [formData, setFormData] = useState({
        username: "",
        password: ""
    })

    const handleFormChange = (e) => {
        const newForm = {...formData}
        newForm[e.target.id] = e.target.value
        setFormData(newForm)
    }

    const handleLogin = () => {                                            // Resolve only if the status code is 201
        axios.post("/api/login", {...formData}, {validateStatus: (status) => {return status === 201;}})               
            .then(res => setCurrentUser(res.data)) //I validate, so that the user in state will only change on a succesful login 
    }

    return(
        <>
        <div className="hero min-h-screen bg-base-200">
            <div className="hero-content flex-col lg:flex-row-reverse">
                <div className="text-center lg:text-left">
                    <h1 className="text-5xl font-bold">Login now!</h1>
                    <p className="py-6">Provident cupiditate voluptatem et in. Quaerat fugiat ut assumenda excepturi exercitationem quasi. In deleniti eaque aut repudiandae et a id nisi.</p>
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
                        <div className="form-control mt-6">
                        <button onClick={handleLogin} className="btn btn-primary">Login</button>
                        <label className="label justify-center">
                            <Link to="/signup" className="label-text-alt link link-hover">Sign Up</Link>
                        </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </>
    )
}

export default Login