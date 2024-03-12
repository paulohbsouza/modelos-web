import { useContext } from "react";
import { CountContext } from "./App";
import AnotherChild from "./AnotherChild";

const Child = () => {

    const {count} = useContext(CountContext);

    return (
        <>
            <div>child {count}</div>
            <AnotherChild/>
        </>
    );
}
export default Child