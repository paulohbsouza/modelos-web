//
import collapse from "bootstrap/js/src/collapse";
import {useState} from "react";

const NavLinks = (props) => {
    {/*
        Defaults Params Simple Menu
        link => page/route
        linkName => Link Name
        icon => icon nome

        Defaults Params Plus Menu
        link => '#' (Important!)
        linkName => Link Name
        icon => icon nome
        idCollapseName => 'idCollapseName'
        subMenu => {[{key-value}, {key-value}, ...]}
    */}

    const [arrow, setArrow] = useState('');

    return (
        <nav>
            {props.link === "#"
                ? //Plus Menu
                <li className={"" + arrow}>
                    <div className="icon-link">
                        <a data-bs-toggle="collapse" href={"#" + props.idCollapseName}
                           role="button"
                           aria-expanded="false"
                           aria-controls={props.idCollapseName}
                           onClick={() => { arrow === '' ? setArrow('arrow') : setArrow('') }}
                        >
                            <i className={props.icon}/>
                            <span>{props.linkName}</span>
                            <i className="bi bi-chevron-down ms-auto arrow"/>
                        </a>
                    </div>
                    <ul className={"sub-menu collapse"} id={props.idCollapseName}>{/* !!! style blank css */}
                        <li><a href={props.link} className="link-name">{props.linkName}</a></li>{/* !!! style link name css */}
                        {props.subMenu !== undefined
                            ?
                            props.subMenu.map(row => {
                                return (
                                //key={props.id} testar dentro de LI caso der Warning no console
                                    <li><a href={row.subMenuLink}>{row.subMenuName}</a></li>// corrigir erro de key
                                );
                            })
                            :
                            null
                        }
                    </ul>
                </li>
                : //Simple Menu
                <li>
                    <div className="icon-link">
                        <a href={props.link}>
                            <i className={props.icon}/>
                            <span>{props.linkName}</span>
                        </a>
                    </div>
                    <ul className={"sub-menu"}>
                        <li><a href={props.link} className="link-name">{props.linkName}</a></li>
                    </ul>
                </li>
            }
        </nav>
    );
}

export default NavLinks;
