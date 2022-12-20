import React, { useState, createContext } from "react";



// create the context
const UserContext = createContext();

// create a provider component
function UserProvider({ children }) {

    const [currentUser, setCurrentUser] = useState({})
    return <UserContext.Provider value={[currentUser, setCurrentUser]}>{children}</UserContext.Provider>;
}


export { UserContext, UserProvider};