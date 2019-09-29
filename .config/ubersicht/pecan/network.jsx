export const command = "bash pecan/scripts/network"

export const refreshFrequency = 5000 // ms

export const render = ({output}) => {
  output = output ? output.trim() : ""

  const opacity = !output ? 0.5 : 1;
  return (<div className='screen'>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css"
        rel="stylesheet"></link>
      <div className='pecannetwork'>
        <i className="fa fa-wifi" style={{opacity}}></i>
        {" " + output}
      </div>
    </div>
  )
}
