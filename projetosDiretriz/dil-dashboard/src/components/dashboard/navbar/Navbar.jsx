import avatar from "../../../assets/avatar.svg";

const Navbar = ({sidebarOpen, openSidebar}) => {
    return (
        <nav className="navbar">

            {/* open sidebar */}
            <div className="nav-icon" onClick={() => openSidebar()}>
                <span className="icon-menu">c</span>
            </div>

            {/* group flex left */}
            <div className="navbar-left">
                <a href="#">
                    <span className="icon-menu colapse-sedebar">D</span>
                </a>
                <div className="search-container ms-3">
                    <a href="#">
                        <i className="bi bi-search"/>
                    </a>
                    <input type="text" name="search" placeholder="Buscar..." className="search-input"/>
                </div>
            </div>

            menu1 - menu2

            {/* group flex right */}
            <div className="navbar-right">
                <a href="#">
                    <i className="bi bi-gear me-3"/>
                </a>
                <a className="#">
                    <img width="30" src={avatar} alt="avatar"/>
                </a>
            </div>

        </nav>
    )
}

export default Navbar;
