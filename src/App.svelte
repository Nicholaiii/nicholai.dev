<script>
import '@fontsource/cutive-mono'
import {
  mdiGithub,
	mdiTwitter,
	mdiDiscord,
  mdiMastodon
} from '@mdi/js'

import Social from './Social.svelte'

function copyDiscordLink () {
  navigator.clipboard.writeText('nicholai')
}

const socialButtons = [
  {
    title: 'GitHub',
    path: mdiGithub,
    href: 'https://github.com/nicholaiii',
    tips: ['@nicholaiii', 'github']
  }, {
    title: 'Mastodon ',
    path: mdiMastodon,
    href: 'https://mastodon.social/@nicholai',
    tips: ['@nicholai', 'mastodon']
  }, {
    title: 'Twitter',
    path: mdiTwitter,
    href: 'https://twitter.com/nicholainissen',
    tips: ['@nicholainissen', 'twitter']
  }, {
    tips: ['nicholai', 'click to copy', 'Copied!'],
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
  <a class="masto-link" rel="me" href="https://mastodon.social/@nicholai">Mastodon</a>
  <a class="masto-link" rel="me" href="https://tech.lgbt/@nicholai">Mastodon</a>
</main>

<style>

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

a.masto-link { display:none; }
</style>