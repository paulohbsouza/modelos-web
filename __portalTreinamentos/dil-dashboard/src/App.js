import "bootstrap-icons/font/bootstrap-icons.css";
import "./css/app.css";
import {BrowserRouter} from "react-router-dom";
import {useState} from 'react';
import Navbar from "./components/dashboard/navbar/Navbar";
import SideRouters from "./components/dashboard/SideRouters";
import NavRouters from "./components/dashboard/NavRouters";
import Sidebar from "./components/dashboard/sidebar/Sidebar";

const App = () => {

    const [sidebarOpen, setSidebarOpen] = useState(false);

    const openSidebar = () => {
        setSidebarOpen(true);
    }

    const closeSidebar = () => {
        setSidebarOpen(false);
    }

    return (
        <BrowserRouter>
            <div className="container__dashboard">
                <Navbar sidebarOpen={sidebarOpen} openSidebar={openSidebar}/>
                <NavRouters/>
                <SideRouters/>
                <Sidebar sidebarOpen={sidebarOpen} closeSidebar={closeSidebar}/>
            </div>
        </BrowserRouter>
    );
}

export default App;
