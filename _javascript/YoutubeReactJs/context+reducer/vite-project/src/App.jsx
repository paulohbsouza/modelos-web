import { useState, createContext } from 'react'
import './App.css'

import Child from './Child'

export const CountContext = createContext();

const App = () => {

  const [count, setCount] = useState(0);

  return (
    <>
      <div>div</div>

      <CountContext.Provider value={{count, setCount}}>
        <Child/>
      </CountContext.Provider>

    </>
  )
}

export default App
