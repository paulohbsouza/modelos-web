import { useContext } from "react";
import { DataContext } from "../context/Context";

const AnotherChild = () => {

    //Este é o Context utilizando uma parte de um objeto
    const {dispatchCount} = useContext(DataContext);

    return (
        <>
            <button onClick={() => {
                dispatchCount({
                    type: 'INCREMENT1',
                    payload: 5,
                });
            }}>AnotherChild - Increment</button>
            <br/>
            <br/>
            <button onClick={() => {
                dispatchCount({
                    type: 'DECREMENT1',
                    payload: 2,
                });
            }}>AnotherChild - Increment</button>
            <br/>
            <br/>
            <hr/>
            <button onClick={() => {
                dispatchCount({
                    type: 'INCREMENT2',
                    payload: 3,
                });
            }}>AnotherChild - Increment</button>
            <br/>
            <br/>
            <button onClick={() => {
                dispatchCount({
                    type: 'DECREMENT2',
                    payload: 1,
                });
            }}>AnotherChild - Increment</button>
        </>
    );
}
export default AnotherChild