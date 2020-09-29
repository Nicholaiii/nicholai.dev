<script>
import SvelteTooltip from './SvelteTooltip.svelte'
import Icon from 'mdi-svelte'
import {
	mdiGithub,
	mdiTwitter,
	mdiGitlab,
	mdiDiscord
} from '@mdi/js'

let discordLinkCopied = false

function copyDiscordLink () {
  navigator.clipboard.writeText('nicholai#1312')
  discordLinkCopied = true
}

function resetTip () {
  setTimeout(() => discordLinkCopied = false,200)
}

const color = '#d996f6'

const tag = tag => (content = '') => `<${tag}>${content}</${tag}>`
const strong = tag('strong')
const i = tag('i')

const tip = (title, subtitle) => `${strong(title)}<br />${i(subtitle)}`
</script>


<main>
	<h1>nicholai nissen.</h1>

  <span class="wrapper m">
    <SvelteTooltip tip="{tip('@nicholaiii', 'github')}" bottom {color}>
      <a href="https://github.com/nicholaiii" target="_blank" rel="noopener">
        <Icon title="GitHub" path={mdiGithub} {color}/>
      </a>
    </SvelteTooltip>
  </span>

  <span class="wrapper m">
    <SvelteTooltip tip="{tip('@nicholainissen', 'gitlab')}" bottom {color}>
      <a href="http://gitlab.com/nicholainissen" target="_blank" rel="noopener">
        <Icon title="GitLab" path={mdiGitlab} {color} />
      </a>
    </SvelteTooltip>
  </span>

  <span class="wrapper m">
    <SvelteTooltip tip="{tip('@nicholainissen', 'twitter')}" bottom {color}>
      <a href="https://twitter.com/nicholainissen" target="_blank" rel="noopener">
        <Icon title="Twitter" path={mdiTwitter} {color}/>
      </a>
    </SvelteTooltip>
  </span>

  <span class="wrapper m" on:mouseout={resetTip} on:click={copyDiscordLink}>
    <SvelteTooltip tip={discordLinkCopied ? tip('Copied!') : tip('nicholai#1312', 'click to copy')} bottom {color}>
      <Icon path={mdiDiscord} {color}/>
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