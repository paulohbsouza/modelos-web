import { useContext } from "react";
import { CountContext } from "./App";

const AnotherChild = () => {

    const {count} = useContext(CountContext);

    return (
        <>
            <div>child {count}</div>
        </>
    );
}
export default AnotherChild