import { useReducer } from 'react'
import Child from './components/Child'
import { DataContext } from './context/Context'
import { countInitialValue, countReducer } from './store/Reducer'

import './App.css'

const App = () => {
  
  //O useReducer que retornaraá um array (1° valor atual do estado, 2º valor Dispatch)
  const [countState, dispatchCount] = useReducer(countReducer, countInitialValue);

  return (
    <>
      <DataContext.Provider value={{countState, dispatchCount}}>
        <Child/>
      </DataContext.Provider>

    </>
  )
}

export default App
