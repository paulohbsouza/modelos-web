//import {Link} from "react-router-dom";
import NavLinks from "./NavLinks";

const Sidebar = ({sidebarOpen, closeSidebar}) => {

    /* sidebar component */
    return (
        <div className={sidebarOpen ? "sidebar-responsive" : "small"} id="sidebar" >
            {/* group header */}
            <div className="sidebar-title">
                <i className="bi bi-info-circle-fill"/>
                <span>Portal CRM</span>
            </div>

            {/* close sidebar */}
            <div className="close-sidebar" id="sidebarIcon" onClick={() => closeSidebar()}>
                <i className="bi bi-x ms-auto"/>
            </div>

            {/* group menu link */}
            <div className="sidebar-menu">
                <ul className="nav-links">
                    <h2>INÍCIO</h2>
                    <NavLinks link="/meuDashboard" linkName="Meu Dashboard" icon="bi bi-calendar2-heart"/>


                    <h2>GERAL</h2>
                    <NavLinks link="/agenda" linkName="Agenda" icon="bi bi-calendar-date"/>

                    <NavLinks link="/calendario" linkName="Calendário" icon="bi bi-calendar-week"/>

                    <NavLinks link="/consultorCliente" linkName="Consultor Cliente" icon="bi bi-briefcase"/>

                    <NavLinks link="/listaRamis" linkName="Lista de Ramais" icon="bi bi-list-columns"/>

                    <NavLinks link="#" linkName="Recursos" icon="bi bi-collection" idCollapseName="recursos"
                              subMenu={[
                                  {subMenuName: "Biblioteca", subMenuLink: "/biblioteca"}
                              ]}/>

                    <NavLinks link="#" linkName="Gestão de Pessoas" icon="bi bi-people" idCollapseName="gestaoPessoas"
                              subMenu={[
                                  {subMenuName: "Manual do Colaborador", subMenuLink: "/manualColaborador"},
                                  {subMenuName: "Convenções Sindicais", subMenuLink: '/convencoesSindicais'},
                                  {subMenuName: "Mapa de Oportunidades", subMenuLink: '/mapaOportunidades'},
                                  {subMenuName: "...", subMenuLink: '/...'}
                              ]}/>

                    <NavLinks link="/treinamentos" linkName="Treinamentos" icon="bi bi-mortarboard"/>

                    <NavLinks link="/versatilidade" linkName="Versatilidade" icon="bi bi-check2-all"/>


                    <h2>CADASTROS</h2>
                    <NavLinks link="#" linkName="Clientes" icon="bi bi-person-plus" idCollapseName="clientes"
                              subMenu={[
                                  {subMenuName: "Cliente Seriais", subMenuLink: "/clienteSeriais"},
                                  {subMenuName: "Grupos de Clientes", subMenuLink: '/gruposClientes'},
                                  {subMenuName: "...", subMenuLink: '/...'}
                              ]}/>


                    <h2>LIBRARY WEB & DOCS</h2>
                    <NavLinks link="#" linkName="React Components" icon="bi bi-filetype-jsx" idCollapseName="reactComponents"
                              subMenu={[
                                  {subMenuName: "Form", subMenuLink: "/reactForm"},
                                  {subMenuName: "Button", subMenuLink: '/reactButton'},
                                  {subMenuName: "...", subMenuLink: '/...'}
                              ]}/>

                    <NavLinks link="#" linkName="Style Components" icon="bi bi-filetype-css" idCollapseName="styleComponents"
                              subMenu={[
                                  {subMenuName: "Form", subMenuLink: "/styleForm"},
                                  {subMenuName: "Button", subMenuLink: '/styleButton'},
                                  {subMenuName: "...", subMenuLink: '/...'}
                              ]}/>

                    <NavLinks link="/Development" icon="bi bi-code-slash" linkName="Development"/>

                    <NavLinks link="/Infrastructure" icon="bi bi-hdd-network" linkName="Infrastructure"/>
                </ul>
            </div>
        </div>
    )
}

export default Sidebar;