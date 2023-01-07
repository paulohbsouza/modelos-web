import React, {useState, useRef} from 'react'

export default function ToDoList(){

    //State
    const [listaTarefas, setListaTarefas] = useState(() => { return[] })
    const [tarefa, setTarefa] = useState(() => { return ''})

    //Ref
    const idTarefa = useRef(0)
    const inputRef = useRef()

    //METODOS
    function adicionarTarefa(){
        setListaTarefas(old =>{ return [...old, {id: idTarefa.current, texto: tarefa}] })
        idTarefa.current++ // ou: = idTarefa.current + 1
        setTarefa('')
        inputRef.current.focus()
    }

    function limparTarefas(){
        setListaTarefas(old => {return[]})
        idTarefa.current = 0
    }

    function removerTarefa(id) {
        const tmp = listaTarefas.filter(t => t.id !== id)
        setListaTarefas(tmp)
    }

    return (
        <>
            <h3>Gestor de tarefas</h3>
            <hr/>
            <input ref={inputRef} type="text" value={tarefa} onChange={(evento) => {setTarefa(evento.target.value)}} />
            <div>
                <button onClick={adicionarTarefa}>Adicionar</button>
                <button onClick={limparTarefas}>Limpar Tudo</button>
            </div>
            <hr/>
            <p>Tarefas: </p>
            {listaTarefas.map((t) => {
                return <p key={t.id}>{t.texto} <span onClick={() => {removerTarefa(t.id)}}>[remover]</span></p>
            })}
        </>
    )
}