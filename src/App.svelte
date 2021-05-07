<script>
import {
  mdiGithub,
	mdiTwitter,
	mdiGitlab,
	mdiDiscord
} from '@mdi/js'

import Social from './Social.svelte'

function copyDiscordLink () {
  navigator.clipboard.writeText('nicholai#1312')
}

const socialButtons = [
  {
    title: "GitHub",
    path: mdiGithub,
    href: "https://github.com/nicholaiii",
    tips: ['@nicholaiii', 'github']
  }, {
    title: "GitLab",
    path: mdiGitlab,
    href: "http://gitlab.com/nicholainissen",
    tips: ['@nicholainissen', 'gitlab']
  }, {
    title: "Twitter",
    path: mdiTwitter,
    href: "https://twitter.com/nicholainissen",
    tips: ['@nicholainissen', 'twitter']
  }, {
    tips: ['nicholai#1312', 'click to copy', 'Copied!'],
    path: mdiDiscord
  }
]

const color = '#b5838d'
</script>


<main>
	<h1>nicholai nissen.</h1>
  {#each socialButtons as social}
    {#if !social.title}
      <Social {color} {...social} on:click={copyDiscordLink} />
    {:else}
      <Social {color} {...social} />
    {/if}
  {/each}
</main>

<style>
@import url('https://fonts.googleapis.com/css2?family=Cutive+Mono&display=swap');

main {
	text-align: center;
	padding: 1em;
	max-width: 300px;
	margin: 0 auto;
}

h1 {
	color: #e5989b;
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