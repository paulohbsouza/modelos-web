import React, { useState, useRef, useEffect } from "react";

import { FontAwesomeIcon as FA } from '@fortawesome/react-fontawesome';
import { faList, faTrash, faCirclePlus } from '@fortawesome/free-solid-svg-icons';

import './App.css';
import { v4 as chave } from "uuid";
import Contacto from "./Components/Contacto";

export default function App() {
    // states
    const [contacto, setContacto] = useState({id: '', nome: '', telefone: ''});
    const [listaContactos, setListaContactos] = useState([]);

    // useRef
    const inputNome = useRef();
    const inputTelefone = useRef();

    // métodos
    function definirNome (event) {
        setContacto({...contacto, nome: event.target.value})
    }

    function definirTelefone (event) {
            setContacto({...contacto, telefone: event.target.value})
        }

    function adicionarContacto () {
        // validação dos campos
        if(contacto.nome === "" || contacto.telefone === "") return

        // verificar se o contato já existe
        let duplicado = listaContactos.find((ct) => ct.nome === contacto.nome && ct.telefone === contacto.telefone)
        if(typeof duplicado !== 'undefined') {
            inputTelefone.current.focus()
            return
        }

        // adicionar novo contacto à lista
        setListaContactos([...listaContactos, {...contacto, id: chave()}])

        // limpar o contacto
        setContacto({nome: '', telefone: ''})

        // colocar focus no input nome
        inputNome.current.focus();
    }

    function enterAdicionarContacto (event) {
        if (event.code === 'Enter') {
            adicionarContacto();
        }
    }
    
    // persistencia do state
    // carregar listaContactos do localStorage
        useEffect(() => {
            if(localStorage.getItem('meus_contactos') !== null) {
                setListaContactos(JSON.parse(localStorage.getItem('meus_contactos')))
            }
        }, [] )

    // atualizar lista de contactos no localStorage
    useEffect(() => {
        localStorage.setItem('meus_contactos', JSON.stringify(listaContactos))
    }, [listaContactos])

    // limpar toda a lista
    function limparStorage () {
        setListaContactos([])
    }

    // remover um contacto da lista
    function removerContacto (id) {
        let tmp = listaContactos.filter(ct => ct.id !== id)
        setListaContactos(tmp)
    }

    return (
        <>
            <div className="container-fluid titulo">
                <div className="row">
                    <div className="col text-center">
                        <h4 className="text-center"><FA icon={faList} className="me-3" />LISTA DE CONTACTOS</h4>
                    </div>
                </div>
            </div>

            <div className="container-fluid formulario">
                <div className="row">
                    <div className="col p-3">

                        <div className="row justify-content-center">
                            <div className="col-10 col-sm-8 col-md-6 col-lg-4">
                                <div className="mb-3">
                                    <label className="form-label">Nome:</label><br/>
                                    <input type="text" ref={inputNome} onChange={definirNome} value={contacto.nome} className="form-control" />
                                </div>
                                <div className="mb-3">
                                    <label className="form-label">Telefone:</label><br/>
                                    <input type="text" ref={inputTelefone} onChange={definirTelefone} onKeyUp={enterAdicionarContacto} value={contacto.telefone} className="form-control" />
                                </div>

                                <div className="row mt-3">
                                    <div className="col text-start">
                                        <button onClick={limparStorage} className="btn btn-outline-warning"><FA icon={faTrash} className="me-2" />Limpar</button>
                                    </div>
                                    <div className="col text-end">
                                        <button onClick={adicionarContacto}  className="btn btn-outline-info"><FA icon={faCirclePlus} className="me-2" />Adicionar</button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>



            {listaContactos.map(ct => {
                return <Contacto key={ct.id} id={ct.id} nome={ct.nome} telefone={ct.telefone} remover={removerContacto} />
            })}
        </>
    )
}
