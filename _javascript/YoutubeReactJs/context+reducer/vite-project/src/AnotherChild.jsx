import { useContext } from "react";
import { CountContext } from "./App";

const AnotherChild = () => {

    //Este é o Context utilizando uma parte de um objeto
    const {setCount} = useContext(CountContext);

    return (
        <>
            {/* Descontinuado (Versão 1)
            <button onClick={() => {
                setCount((previousState) => {
                    return previousState + 1;
                });
            }}>AnotherChild - Increment</button>
            */}
            <button onClick={() => {
                setCount({
                    type: 'INCREMENT1',
                    payload: 5,
                });
            }}>AnotherChild - Increment</button>
            <br/>
            <br/>
            <button onClick={() => {
                setCount({
                    type: 'DECREMENT1',
                    payload: 2,
                });
            }}>AnotherChild - Increment</button>
            <br/>
            <br/>
            <hr/>
            <button onClick={() => {
                setCount({
                    type: 'INCREMENT2',
                    payload: 3,
                });
            }}>AnotherChild - Increment</button>
            <br/>
            <br/>
            <button onClick={() => {
                setCount({
                    type: 'DECREMENT2',
                    payload: 1,
                });
            }}>AnotherChild - Increment</button>
        </>
    );
}
export default AnotherChild