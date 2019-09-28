export const command = "bash pecan/scripts/battery"

export const refreshFrequency = 60000 // ms

export const render = ({output}) => (
    <div class='screen'>
        <div class='pecanbattery'>{output}</div>
    </div>
)
