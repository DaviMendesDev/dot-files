/** @type {import('tailwindcss').Config} */

const colors = require('tailwindcss/colors')

module.exports = {
	content: [
    "./components/**/*.{js,vue,ts}",
    "./layouts/**/*.vue",
    "./pages/**/*.vue",
    "./plugins/**/*.{js,ts}",
    "./nuxt.config.{js,ts}",
    "./app.vue",
  ],
  theme: {
    extend: {},
    fontFamily: {
      'philosopher': ['Philosopher'],
      'alegreya': ['Alegreya'],
      'jakarta': ['PlusJakartaSans'],
      'urbanist': ['Urbanist'],
    },
    colors: {
      transparent: 'transparent',
      current: 'currentColor',
      black: colors.black,
      white: colors.white,
      gray: colors.gray,
      emerald: colors.emerald,
      'primary': colors.indigo,
      yellow: colors.yellow,
    }
  },
  plugins: [],
}

