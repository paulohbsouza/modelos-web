import React from "react";

//Tipagem do Context
export type CountContext = {
    State: any;
    SetState: React.Dispatch<any>;
}

//Tipagem do Reducer
export type StorageState = {
    count1: number
    count2: number
}

//Tipagem do Reducer
export type StorageAction = {
    type: any,
    payload: any,
}
