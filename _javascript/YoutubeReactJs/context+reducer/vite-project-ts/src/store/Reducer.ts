import { StorageAction, StorageState } from "../@types/types";

//Este é a criação do Reducer
export const countReducer = (state: StorageState, action: StorageAction) => {
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

//Valor default inicial do Reducer
export const countInitialValue = {
    count1: 0,
    count2: 0,
};
