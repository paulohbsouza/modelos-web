//import React from 'react'
import ClientContext from './components/ClientContext'
import UserContext from './components/UserContext'

//Providers
import {UsuarioProvider} from './contexts/UserContext'
import {ClienteProvider} from './contexts/ClientContext'

export default function AppContextAPI(){
    return (
        <>
            <h1>APP CONTEXT API</h1>
            <UsuarioProvider>
                <UserContext />
            </UsuarioProvider>
            <ClienteProvider>
                <ClientContext />
            </ClienteProvider>
        </>
    )
}