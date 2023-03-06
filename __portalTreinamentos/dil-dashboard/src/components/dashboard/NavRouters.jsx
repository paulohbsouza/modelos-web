import {Routes, Route} from "react-router-dom";
import CTeste4 from "../../examples/CTeste4";

const NavRouters = () => {
    return (
        <Routes>
            <Route exact path="/Subscribers" element={<CTeste4/>}/>
        </Routes>
    );
}

export default NavRouters;