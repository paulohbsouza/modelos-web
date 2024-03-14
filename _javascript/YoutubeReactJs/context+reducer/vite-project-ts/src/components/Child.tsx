import { useContext } from "react";
import AnotherChild from "./AnotherChild";
import { DataContext } from "../context/Context";

const Child = () => {

    //Este é o Context utilizando uma parte de um objeto
    const {countState} = useContext(DataContext);

    return (
        <>
            <div>Count1: {countState.count1}</div>
            <div>Count2: {countState.count2}</div>
            <br/>
            <hr/>
            <AnotherChild/>
        </>
    );
}
export default Child