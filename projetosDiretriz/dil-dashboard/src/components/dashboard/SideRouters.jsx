import {Routes, Route} from "react-router-dom";
import Main from "./main/Main";
import CTesteUm from "../../examples/CTesteUm";
import CTesteDois from "../../examples/CTesteDois";
import CTesteTres from "../../examples/CTesteTres";

const SideRouters = () => {
    return (
        <Routes>
            <Route exact path="/" element={<Main/>}/>
            <Route exact path="/Form" element={<CTesteUm/>}/>
            <Route exact path="/Dois" element={<CTesteDois/>}/>
            <Route exact path="/Tres" element={<CTesteTres/>}/>
        </Routes>
    );
}

export default SideRouters;