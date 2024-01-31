const defaultTheme = require('tailwindcss/defaultTheme')
const execSync = require('child_process').execSync;
const output = execSync('bundle show administrate_tailwind_theme', { encoding: 'utf-8' });

module.exports = {
  content: [
    output.trim() + '/app/views/**/*.{erb,haml,html,rb}',
    './node_modules/flowbite/**/*.js',
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
    require('flowbite/plugin'),
  ]
}
