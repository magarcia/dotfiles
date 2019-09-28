
export const command = "bash pecan/scripts/ws";

export const refreshFrequency = 1000; // ms

export const render = ({output}) => (
    <div class='screen'>
        <div class='pecanworkspace'>{output}</div>
    </div>
)
