export const command = "date +\"%I:%M%p\"";

export const refreshFrequency = 60000; // ms

export const render = ({output}) => (
  <div class='screen'>
    <div class='pecanclock'>→ {output}</div>
  </div>
)
