import { useState, createContext, useReducer } from 'react'
import './App.css'

import Child from './Child'

//Esta é a criação do Context
export const CountContext = createContext();

const App = () => {

  //Descontinuado
  //const [count, setCount] = useState(0);

  //Este é a criação do Reducer
  const countReducer = (state, action) => {
    switch (action.type) {
      case 'INCREMENT1':
        return {
          ...state,
          count1: state.count1 + action.payload,
        };
      case 'DECREMENT1':
        return {
          ...state,
          count1: state.count1 - action.payload,
        };
      case 'INCREMENT2':
        return {
          ...state,
          count2: state.count2 + action.payload,
        };
      case 'DECREMENT2':
        return {
          ...state,
          count2: state.count2 - action.payload,
        };
      default:
        return state;
    }
  }

  const countInitialValue = {
    count1: 0,
    count2: 0,
  };
  
  //O useReducer que retornaraá um array
  const [count, setCount] = useReducer(countReducer, countInitialValue);

  return (
    <>
      <CountContext.Provider value={{count, setCount}}>
        <Child/>
      </CountContext.Provider>

    </>
  )
}

export default App
