import { useContext } from "react";
import { CountContext } from "./App";

const Child = () => {

    const count = useContext(CountContext);

    return (
        <>
            <div>child {count}</div>
        </>
    );
}
export default Child