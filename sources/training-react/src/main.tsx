import { StrictMode } from 'react';
import { createRoot } from 'react-dom/client';
import { crafterConf } from '@craftercms/classes';
import App from './App';

crafterConf.configure({
  baseUrl: 'http://localhost:8080',
  site: 'training-react',
  fetchConfig: {
    mode: 'cors',
  },
});

createRoot(document.getElementById('root')!).render(
  <StrictMode>
    <App />
  </StrictMode>
);
