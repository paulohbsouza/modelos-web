import React, {useState, useEffect} from 'react'
import User from './components/User'
import './App.css'

export default function AppEffectAPI(){

    const [users, setUsers] = useState([])

    useEffect(() => {
            fetch("https://dummyjson.com/users")
            .then(response => response.json())
            .then(json => {
                console.log(json.users)
                setUsers(json.users)
            })
        }, [])

    return (
        <>
            <h1>Users</h1>
            {users.map(user => {
                return <User key={user.id} user={user} />
            })}
        </>
    )
}