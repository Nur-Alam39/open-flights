import React, {useState, useEffect} from 'react'
import axios from "axios";
import styled from 'styled-components'
import Header from "./Header";

const Wrapper = styled.div`
    margin: 0;
    padding: 0;
    display: grid;
    grid-template-columns: repeat(2, 1fr);
`
const Column = styled.div`
    background: #fff;
    height: 100vh;
    overflow: auto;
    
    &:last-child {
        background: #f2f2f2;
    }
`
const Main = styled.div`
    padding-left: 50px;
`

const Airline = (props) => {
    const [airline, setAirline] = useState({})
    const [review, setReview] = useState({})
    const [loaded, setLoaded] = useState(false)

    useEffect(() => {
        const slug = props.match.params.slug
        const url = `/api/v1/airlines/${slug}`

        axios.get(url)
            .then(response => {
                setAirline(response.data)
                setLoaded(true)
            })
            .catch(response => console.log(response))
        }, [])

    return (
        <Wrapper>
            <Column>
                <Main>
                    {
                        loaded &&
                        <Header
                            attributes={airline.data.attributes}
                            reviews={airline.included}
                        />
                    }
                    <div className="reviews"></div>
                </Main>
            </Column>
            <Column>
                <div className="review-form">[Review form]</div>
            </Column>
        </Wrapper>
    )
}

export default Airline