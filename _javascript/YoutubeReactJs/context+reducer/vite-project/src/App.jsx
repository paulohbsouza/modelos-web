import { createContext } from 'react'
import './App.css'

import Child from './Child'

export const CountContext = createContext();

const App = () => {

  return (
    <>
      <div>div</div>

      <CountContext.Provider value={3}>
        <Child/>
      </CountContext.Provider>

    </>
  )
}

export default App
