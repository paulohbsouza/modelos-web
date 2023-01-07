import {useContext} from 'react'
import ClienteContext from '../contexts/ClientContext'

export function ClientContext() {

    const clientee = useContext(ClienteContext)

    return (
        <>
            <hr/>
            <h3>Cliente</h3>
            <p>Nome: {'cliente.nome >> ' + clientee.nome}</p>
            <p>Email: {'cliente.email >> ' + clientee.email}</p>
        </>
    )
}

export default ClientContext