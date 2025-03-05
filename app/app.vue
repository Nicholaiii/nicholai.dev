<script setup lang="ts">
import { useClipboard } from '@vueuse/core'
const source = ref('nicholai')
const { text, copy, copied, isSupported } = useClipboard({ source })
const discordLabel = computed(() => copied.value ? 'copied to clipboard!' : 'discord')

useHead({
  title: 'nicholai nissen',
  link: [
    { rel: 'icon', type: 'image/svg+xml', href: '/favicon.svg' },
    { rel: 'shortcut icon', href: '/favicon.ico' },
    { rel: 'me', href: 'https://helvede.net/@nicholai' },
    { rel: 'me', href: 'https://libre.fm/user/nicholai' },
  ],
  meta: [{ name: 'apple-mobile-web-app-title', content: 'nicholai.dev' }],
  htmlAttrs: {
    class: 'dark',
  },
})
</script>

<template comments>
  <UContainer class="select-none">
    <div class="grid grid-cols-4 md:grid-cols-12 mt-8 h-card">
      <div class="col-span-4 md:col-start-5 justify-self-stretch text-center text-stone-200">
        <a class="text-4xl p-name p-org u-url" href="https://nicholai.dev/">nicholai nissen.</a>
      </div>
      <div class="p-note col-span-4 md:col-start-5 justify-self-stretch text-center text-stone-300">hi there, welcome to my website!</div>
      <div class="col-span-4 md:col-start-5 justify-self-stretch text-center mt-8 gradient-box mx-auto">
        <div class="grid grid-cols-4 text-left">
          <h2 class="col-span-4 text-stone-300">find me here:</h2>
          <ul class="col-span-4">
            <li class=" inline-flex">
              <UButton icon="i-simple-icons-mastodon" size="sm" variant="link" label="mastodon" to="https://helvede.net/@nicholai" prefetch external target="_blank" class="pr-1" />
              <span class="text-stone-500 font-medium text-sm py-1.5">(helvede.net)</span>
            </li>
            <li>
              <UButton icon="i-simple-icons-discord" size="sm" variant="link" :label="discordLabel" @click="copy()"  />
            </li>
          </ul>
        </div>     
      </div>
    </div>
    <!-- too cool for majuscule -->
  </UContainer>
</template>

<style lang="scss">
body {
  font-family: 'HKGrotesk', Arial, Helvetica, sans-serif;
  background: theme('colors.stone.900')
}

.gradient-box {

  display: flex;
  //align-items: center;
  //width: 50vw;
  width: 90%;
  max-width: 22em;

  position: relative;
  padding: 1em 1em;
  box-sizing: border-box; 

  $border: 1px;
  color: #FFF;
  background: theme('colors.stone.900');
  background-clip: padding-box;
  /* !importanté */
  border: solid $border transparent;
  /* !importanté */
  border-radius: 1em;

  &:before {
    content: '';
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: -1;
    margin: -$border;
    /* !importanté */
    border-radius: inherit;
    /* !importanté */
    background: linear-gradient(to right, theme('colors.violet.400'), theme('colors.pink.400'));
  }
}
</style>