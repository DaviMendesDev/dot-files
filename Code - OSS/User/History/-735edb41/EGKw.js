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
      transparent: 'transparent',
      current: 'currentColor',
      'primary': {
        50:  'indigo-50',
        100: 'indigo-100',
        200: 'indigo-200',
        300: 'indigo-300',
        400: 'indigo-400',
        500: 'indigo-500',
        600: 'indigo-600',
        700: 'indigo-700',
        800: 'indigo-800',
        900: 'indigo-900',
      },
    }
  },
  plugins: [],
}

