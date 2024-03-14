import { useContext } from "react";
import { CountContext } from "../App";
import AnotherChild from "./AnotherChild";

const Child = () => {

    //Este é o Context utilizando uma parte de um objeto
    const {count} = useContext(CountContext);

    return (
        <>
            <div>Count1: {count.count1}</div>
            <div>Count2: {count.count2}</div>
            <br/>
            <hr/>
            <AnotherChild/>
        </>
    );
}
export default Child