import React from 'react'

export default function User({user}) {
    return (
        <>
            <div className='user-container'>
                Nome: <strong>{user.firstName} {user.lastName}</strong>
            </div>
        </>
    )
}
