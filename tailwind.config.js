const colors = require('./app/javascript/config/colors.js')
const fontFamily = require('./app/javascript/config/fontFamily.js')

module.exports = {
  content: [
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*'
  ],
  theme: {
    colors: {
      ...colors
    },
    fontFamily: {
      ...fontFamily
    },
    screens: {
      sm: '576px', // breakpoints inspired by the current BS settings
      md: '768px',
      lg: '992px',
      xl: '1200px'
    },
    extend: {
      scale: {
        '102': '1.02',
      }
    }
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/line-clamp'),
  ]
}
