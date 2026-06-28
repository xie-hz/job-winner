import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';
import en from './locales/en.json';
import es from './locales/es.json';
import zh from './locales/zh.json';

const resources = {
  en: { translation: en },
  es: { translation: es },
  zh: { translation: zh },
};

i18n.use(initReactI18next).init({
  resources,
  lng: 'zh', // Default language
  fallbackLng: 'en',
  interpolation: {
    escapeValue: false,
  },
});

export default i18n;
