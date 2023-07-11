<svelte:head>
	<title>nicholai nissen</title>
	<meta name="description" content="Homepage for Nicholai Nissen's personal website" />
  <link rel='stylesheet' href='/global.css'>
</svelte:head>

<script>
import '@fontsource/cutive-mono'
import {
    mdiGithub,
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
    },  {
    tips: ['nicholai', 'click to copy', 'Copied!'],
    path: mdiDiscord
    }
]

const color = '#b5838d'
</script>

<section>
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
</section>

<style>
h1 {
    color: #e5989b;
    font-size: 4em;
    font-weight: 100;
    font-family: 'Cutive Mono', monospace;
}

a.masto-link { display:none; }
</style>
