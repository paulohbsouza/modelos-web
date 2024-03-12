import { useContext } from "react";
import { CountContext } from "./App";

const AnotherChild = () => {

    const {setCount} = useContext(CountContext);

    return (
        <>
            <button onClick={() => {
                setCount((previousState) => {
                    return previousState + 1;
                });
            }}>AnotherChild - Increment</button>
        </>
    );
}
export default AnotherChild