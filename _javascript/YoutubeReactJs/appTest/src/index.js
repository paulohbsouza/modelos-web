import {createRoot} from "react-dom/client";
//import AppEffectAPI from './AppEffectAPI'
//import AppToDoList from './AppToDoList'
//import AppReducer from './AppReducer'
//import AppUUID from './AppUUID'
//import AppTema from './AppTema'
//import AppTabuada from './AppTabuada'
//import AppRouter from './AppRouter'
//import AppContextAPI from './AppContextAPI'
import AppAxios from './AppAxios'

const root = document.querySelector("#root")
createRoot(root).render(<AppAxios />)
