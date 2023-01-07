import React from "react";
import 'bootstrap/dist/css/bootstrap.min.css';
import { BrowserRouter, Routes, Route, Outlet, Link } from "react-router-dom";

//components
import Empresa from "./components/Empresa";
import Lojas from "./components/Lojas";

import LojaLisboa from "./components/Lojas/LojaLisboa";
import LojaPorto from "./components/Lojas/LojaPorto";
import LojaCoimbra from "./components/Lojas/LojaCoimbra";

export default function AppRouter() {
    return (
        <>
            <BrowserRouter>
                <nav className="d-flex justify-content-around bg-secondary p-3 mb-3">
                    <Link className="link-light" to="/">Empresa</Link>
                    <Link className="link-light" to="lojas">Lojas</Link>

                    <Link className="link-light" to="lojas/lisboa">Lisboa</Link>
                    <Link className="link-light" to="lojas/porto">Porto</Link>
                    <Link className="link-light" to="lojas/coimbra">Coimbra</Link>
                </nav>
                <Routes>
                    <Route path="/" element={<Empresa />} />
                    <Route path="lojas" element={
                            <>
                                <Lojas />
                                <Outlet /> {/* Outlet para "pegar" (navegação/conteudo) dos childrens */}
                            </>
                        }>
                        <Route index /* ou path="lisboa" */ element={<LojaLisboa />} />
                        <Route path="porto" element={<LojaPorto />} />
                        <Route path="coimbra" element={<LojaCoimbra />} />
                    </Route>
                </Routes>
            </BrowserRouter>
        </>
    )
}
