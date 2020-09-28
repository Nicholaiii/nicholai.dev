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
const tag = tag => (content = '') => `<${tag}>${content}</${tag}>`
const strong = tag('strong')
const i = tag('i')
const ogtip = `${strong('nicholai#1312')}<br />
<i>click to copy</i>`

const tip = (title, subtitle) => `${strong(title)}<br />${i(subtitle)}`
</script>


<main>
	<h1>nicholai nissen.</h1>

  <span class="wrapper m">
    <SvelteTooltip tip="{tip('@nicholaiii', 'github')}" bottom color={color}>
      <a href="https://github.com/nicholaiii" target="_blank">
        <Icon path={mdiGithub} color={color}/>
      </a>
    </SvelteTooltip>
  </span>

  <span class="wrapper m">
    <SvelteTooltip tip="{tip('@nicholainissen', 'gitlab')}" bottom color={color}>
      <a href="http://gitlab.com/nicholainissen" target="_blank">
        <Icon path={mdiGitlab} color={color} />
      </a>
    </SvelteTooltip>
  </span>

  <span class="wrapper m">
    <SvelteTooltip tip="{tip('@nicholainissen', 'twitter')}" bottom color={color}>
      <a href="https://twitter.com/nicholainissen" target="_blank">
        <Icon path={mdiTwitter} color={color}/>
      </a>
    </SvelteTooltip>
  </span>

  <span class="wrapper m" on:mouseout={resetTip} on:click={copyDiscordLink}>
    <SvelteTooltip tip={tip('nicholai#1312', 'click to copy')} bottom color={color}>
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

main {
  user-select: none;
}
</style>