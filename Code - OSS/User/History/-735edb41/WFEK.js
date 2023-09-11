/** @type {import('tailwindcss').Config} */
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
      'primary': 'primary',
      'secondary': 'neutral'
    }
  },
  plugins: [],
}

