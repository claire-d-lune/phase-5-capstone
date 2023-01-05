/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{js,jsx}"],
  theme: {
    extend: {},
  },
  plugins: [require('daisyui')],   
  
  daisyui: {
    styled: true,
    themes: true,
    base: true,
    utils: true,
    logs: true,
    rtl: false,
    prefix: "",
    themes: ["coffee", "dracula", "pastel","valentine", "forest", "cupcake", "emerald", "garden"],
    darkTheme: "coffee",
  } 
}
