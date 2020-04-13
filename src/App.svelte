<script>
import SvelteTooltip from './SvelteTooltip.svelte'
import Icon from 'mdi-svelte'
import {
	mdiGithub,
	mdiTwitter,
	mdiGitlab,
	mdiDiscord
} from '@mdi/js'

function copyDiscordLink () {
  navigator.clipboard.writeText('nicholai#1312')
  tip = "Copied!"
}

function resetTip () {
  setTimeout(()=>tip = ogtip, 200)
}

const color = '#d996f6'
const ogtip = `<strong>nicholai#1312</strong> <br />
<i>click to copy</i>`
let tip = ogtip
</script>


<main>
	<h1>nicholai nissen.</h1>
  <span class="m">
    <a href="https://github.com/nicholaiii">
      <Icon path={mdiGithub} color={color}/>
    </a>
  </span>
  <span class="m">
    <a href="http://gitlab.com/nicholainissen">
      <Icon path={mdiGitlab} color={color}/>
    </a>
  </span>
  <span class="m">
    <a href="https://twitter.com/nicholainissen">
      <Icon path={mdiTwitter} color={color}/>
    </a>
  </span>
  <span class="wrapper m" on:mouseout={resetTip} on:click={copyDiscordLink}>
    <SvelteTooltip tip={tip} bottom color="#d996f6">
      <Icon path={mdiDiscord} color={color}/>
    </SvelteTooltip>
  </span>
</main>

<style>
@import url('https://fonts.googleapis.com/css2?family=Cutive+Mono&display=swap');

.m {
  margin-left: 0.5em;
  margin-right: 0.5em;
}

.wrapper {
  color: #efdeff;
}

main {
	text-align: center;
	padding: 1em;
	max-width: 300px;
	margin: 0 auto;
}

h1 {
	color: #8D67D5;
	font-size: 4em;
	font-weight: 100;
	font-family: 'Cutive Mono', monospace;
}

@media (min-width: 640px) {
	main {
		max-width: none;
	}
}
</style>