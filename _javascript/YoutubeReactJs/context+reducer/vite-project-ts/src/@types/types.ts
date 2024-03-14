import React from "react";

//Tipagem do Context
export type CountContext = {
    countState: any,
    dispatchCount: React.Dispatch<any>,
}

//Tipagem do Reducer
export type StorageState = {
    count1: number,
    count2: number,
}

//Tipagem do Reducer
export type StorageAction = {
    type: any,
    payload: any,
}
