import React from "react"

interface Props {
  name: string;
}

const Welcome: React.FunctionComponent<Props> = props => {
  return <h1>Welcome {props.name}!</h1>
}

export default Welcome
