export const command = "bash pecan/scripts/network"

export const refreshFrequency = 5000 // ms

export const render = ({output}) => (
  <div class='screen'>
    <div class='pecannetwork'>{output}</div>
  </div>
)
