<script setup lang="ts">
import { useClipboard } from '@vueuse/core'

const source = ref('nicholai')
const { text, copy, copied, isSupported } = useClipboard({ source })

useHead({
  title: 'nicholai nissen',
  link: [
    { rel: 'icon', type: 'image/svg+xml', href: '/favicon.svg' },
    { rel: 'shortcut icon', href: '/favicon.ico' },
    { rel: 'me', href: 'https://helvede.net/@nicholai' },
  ],
  meta: [{ name: 'apple-mobile-web-app-title', content: 'nicholai.dev' }],
  htmlAttrs: {
    class: 'dark',
  },
})
</script>

<template>
  <UContainer class="select-none">
    <div class="grid grid-cols-4 md:grid-cols-12 mt-8">
      <div class="col-span-4 md:col-start-5 justify-self-stretch text-center">
        <a class="text-4xl h-card" href="https://nicholai.dev/">nicholai nissen.</a>
      </div>
      <div class="col-span-4 md:col-start-5 justify-self-stretch text-center mt-8 gradient-box mx-auto">
        <div class="grid grid-cols-4">
        <h2 class="col-span-4">find me here:</h2>
        <ul class="col-span-4">
          <li>
            <UButton icon="i-pixelarticons-mastodon" size="sm" color="stone" variant="link" label="mastodon" to="https://helvede.net/@nicholai" external
              :trailing="false" />
          </li>
        </ul>
        </div>
        
      </div>
    </div>
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