// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  devtools: { enabled: true },
  future: {
    compatibilityVersion: 4
  },
  modules: ["@nuxt/ui", "@nuxt/fonts", "@nuxthub/core"],
  compatibilityDate: "2025-01-09"
})