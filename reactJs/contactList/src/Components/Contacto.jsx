import React from "react";

import { FontAwesomeIcon as FA } from '@fortawesome/react-fontawesome';
import { faUser, faPhoneVolume, faTrash } from '@fortawesome/free-solid-svg-icons';

import "./Contacto.css";

export default function Contacto(props) {
    return(
        <div className="mx-2">
            <div className="container componente-contacto my-4">
                <div className="row">
                    <div className="col p-2"><h5><FA icon={faUser} className="me-3" />{props.nome}</h5></div>
                    <div className="col p-2"><h5><FA icon={faPhoneVolume} className="me-3" />{props.telefone}</h5></div>
                    <div className="col p-2 text-end">
                        <h5><FA icon={faTrash} className="me-3" onClick={() => {props.remover(props.id) }} /></h5>
                    </div>
                </div>
            </div>
        </div>
    )
}