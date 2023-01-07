import React, {useReducer} from "react"

export default function AppReducer () {

    //reducer (triade/triangulação)
    const [state, dispatch] = useReducer(reducer, {
        score1: 0,
        score2: 0
    })

    function reducer (state, action) {
        switch (action.type) {
            case 'SCORE1':
                return {
                    score1: state.score1 + 1,
                    score2: state.score2
                }
            case 'SCORE2':
                return {
                    score1: state.score1,
                    score2: state.score2 + 1
                }
            case 'RESET':
                return {
                    score1: 0,
                    score2: 0
                }
            default:
                break;
        }
    }

    //----------------------------------------
    function incrementar1() {
        dispatch({type: "SCORE1"})
    }

    function incrementar2() {
        dispatch({type: "SCORE2"})
    }

    function reset() {
        dispatch({type: "RESET"})
    }

    return (
        <>
            <h1>Use React Reducer</h1>
            <hr/>

            <h3>Player 1: {state.score1}</h3>
            <h3>Player 2: {state.score2}</h3>

            <button onClick={incrementar1}>Player1</button>
            <button onClick={incrementar2}>Player2</button>
            <button onClick={reset}>Reset Score</button>
        </>
    )
}