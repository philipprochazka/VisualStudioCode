import { defineConfig } from 'vite';
import { resolve } from 'path';
import { createVuePlugin } from 'vite-plugin-vue2';
import { sass } from 'vite-plugin-sass';
import autoprefixer from 'autoprefixer';

export default defineConfig({
  resolve: {
    alias: {
      '@': resolve(__dirname, 'src'),
    },
  },
  plugins: [
    createVuePlugin(),
    sass({
      includePaths: ['node_modules'],
      postCssPlugins: [autoprefixer()],
    }),
  ],
  build: {
    outDir: 'public',
  },
  server: {
    open: true,
  },
});
