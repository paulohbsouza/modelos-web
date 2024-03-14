import { useReducer, useState } from 'react'
import Child from './components/Child'
import { DataContext } from './context/Context'
import { countInitialValue, countReducer } from './store/Reducer'

import './App.css'

const App = () => {
  
   //O useReducer que retornaraá um array (1° valor atual do estado, 2º valor Dispatch)
  const [countState_var, dispatchCount_var] = useReducer(countReducer, countInitialValue);

  //
  return (
    <>
      <DataContext.Provider value={{countState: countState_var, dispatchCount: dispatchCount_var}}>
        <Child/>
      </DataContext.Provider>

    </>
  )
}

export default App
