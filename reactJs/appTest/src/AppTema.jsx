import React, {useState} from 'react'

export default function AppTema() {

    const [escuro, setEscuro] = useState(false)

    const tema = {
        backgroundColor: escuro ? "black" : "white",
        color: escuro ? "white" : "black"
    }

    //function mudarTema () {
    //    setEscuro(old => !old)
    //}

    return (
        <div style={tema}>
            <h1>React - Tema Claro/Escuro</h1>
            <hr />
            {/* <button onClick={mudarTema}>Tema</button> */}
            <button onClick={() => setEscuro(old => !old)}>Tema</button>
            <p>Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado.</p>
        </div>
    )
}
