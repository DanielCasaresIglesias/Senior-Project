import checker from 'vite-plugin-checker'
import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
  plugins: [react(), checker({ typescript: true })],
  server: {
    host: '0.0.0.0', // Binds to all interfaces
    port: 3001,      // Ensures it's running on port 3001
    strictPort: true, 
    cors: true,      // Enables cross-origin requests
    allowedHosts: ['casaresi.csse.dev', 'casaresi-host.csse.dev'], // Allow requests from your domain
    proxy: {
      '/api': 'http://localhost:3000'
    }
  }
});
