import React, {useState} from 'react'

export default function AppTabuada(){

    const [valor, setValor] = useState(1)

    const multiplicar = () => {

        if(isNaN(valor)) return []

        let produtos = []

        for (let i = 1; i <= 10; i++) {
            //produtos.push(valor * i)
            produtos.push(`${valor} x ${i} = ${valor * i}`)
        }
        return produtos
    }

    return (
        <>
            <h3>React - Tabuada</h3>
            <hr />
            <input type="number" onChange={(e) => { setValor(parseInt(e.target.value)) }} value={valor} />
            {multiplicar().map(item => <p>{item}</p>)}
        </>
    )
}