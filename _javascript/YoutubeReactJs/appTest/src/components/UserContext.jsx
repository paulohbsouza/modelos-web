import {useContext} from 'react'
import UsuarioContext from '../contexts/UserContext'

export function UserContext() {

    const usuarioo = useContext(UsuarioContext)

    return (
        <>
            <hr/>
            <h3>Usuário</h3>
            <p>Usuário: {'usuario.usuario >> ' + usuarioo.usuario}</p>
            <p>Perfil: {'usuario.perfi >> ' + usuarioo.perfil}</p>
        </>
    )
}

export default UserContext