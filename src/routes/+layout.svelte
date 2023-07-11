<div class="app">
  <main>
    <slot />
  </main>
</div>

<style>
main {
    text-align: center;
    padding: 1em;
    max-width: 300px;
    margin: 0 auto;
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
