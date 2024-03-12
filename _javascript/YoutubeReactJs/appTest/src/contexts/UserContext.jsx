import { createContext } from 'react'

const UsuarioContext = createContext()

export function UsuarioProvider({children}) {

    //dados do usuário
    const dados_usuario = {
        usuario: 'joao',
        perfil: 'admin'
    }

    return (
        <UsuarioContext.Provider value={dados_usuario}>
            {children}
        </UsuarioContext.Provider>
    )
}

export default UsuarioContext