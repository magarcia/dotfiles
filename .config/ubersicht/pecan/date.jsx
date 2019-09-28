import { run } from "uebersicht";

export const command = 'date +"%a, %b %d"';

export const refreshFrequency = 100000;

export const render = ({ output }) => (
  <div
    class="screen"
    onClick={() => {
      run('open "https://calendar.google.com"')
    }}
  >
    <div class="holder">
      <div class="pecandate">{output}</div>
    </div>
  </div>
);
