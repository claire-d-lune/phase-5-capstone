import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://vitejs.dev/config/
export default defineConfig({
  server: {
    port: 3000, // changed my outgoing port to 3000 instead of the default 5173
    proxy: {
        '/api': { 
          target: 'http://127.0.0.1:4000/', 
          changeOrigin: true, 
          secure: false, 
          rewrite: (path) => path.replace(/^\/api/, "") // rewrite the path to remove the /api -- I think there's a prob with this line. I'll come back
      },
    },
  },
  plugins: [react()],
});