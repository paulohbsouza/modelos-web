import { useContext } from "react";
import { CountContext } from "./App";
import AnotherChild from "./AnotherChild";

const Child = () => {

    const {count} = useContext(CountContext);

    return (
        <>
            <div>Increment {count}</div>
            <br/>
            <AnotherChild/>
        </>
    );
}
export default Child