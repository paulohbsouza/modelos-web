import {useState, useEffect} from 'react'
import axios from 'axios'

export default function AppAxios() {

    const [products, setProducts] = useState({})

    useEffect (() => {
        axios.get('https://dummyjson.com/products')
        .then((response) => {
            console.log(response.data.products)
            setProducts(response.data.products)
        })
    }, [])

    return (
        <>
            <h1>React Axios</h1>
            <hr/>
            <ul>
                {Object.keys(products).map((key) => {
                    return (
                        <li>{products[key].title} : {products[key].description}</li>
                    )
                })}
            </ul>
        </>
    )
}