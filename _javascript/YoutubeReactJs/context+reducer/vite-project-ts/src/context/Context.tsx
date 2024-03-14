import { createContext } from 'react'
import { CountContext } from '../@types/types';

//Esta é a criação do Context
export const DataContext = createContext<CountContext>({
    countState: null, 
    dispatchCount: () => {}
  });
