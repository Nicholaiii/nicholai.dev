<script lang="ts">
import { createEventDispatcher } from 'svelte'
import Icon from 'mdi-svelte'
import SvelteTooltip from './SvelteTooltip.svelte'

const dispatch = createEventDispatcher()

export let path: string | undefined
export let color: string
export let title: string | null = null
export let href: string | null = null
export let tips: [string, string, string | null] = ['', '', null]

let clicked = false

function resetTip () {
  setTimeout(() => clicked = false, 200)
}

function onClick () {
  clicked = true
  dispatch('click')
}

const tag = (tag: string) => (content = '') => `<${tag}>${content}</${tag}>`
const strong = tag('strong')
const i = tag('i')
const makeTip = (title: string, subtitle?: string) => `${strong(title)}<br />${i(subtitle)}`

$: tip = tips[2] && clicked ? makeTip(tips[2]) : makeTip(tips[0], tips[1])
</script>

<span class="wrapper m" on:mouseout={resetTip} on:blur={resetTip} on:click={onClick}>
  <SvelteTooltip {tip} bottom {color}>
  {#if href}
    <a rel="me noopener" {href} target="_blank">
     <Icon {title} {path} {color}/>
    </a>
  {:else}
     <Icon {title} {path} {color}/>
  {/if}
  </SvelteTooltip>
</span>

<style>
.m {
  margin-left: 0.5em;
  margin-right: 0.5em;
}

.wrapper {
  color: #EFBDBF;
}
</style>
