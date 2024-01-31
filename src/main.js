import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'


createApp(App).mount('#app')


// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: "AIzaSyCM-BbqqYsI0lZUAZjSDPORJiWHBWOyRx8",
  authDomain: "vuejs-aae42.firebaseapp.com",
  databaseURL: "https://vuejs-aae42-default-rtdb.asia-southeast1.firebasedatabase.app",
  projectId: "vuejs-aae42",
  storageBucket: "vuejs-aae42.appspot.com",
  messagingSenderId: "1089766214433",
  appId: "1:1089766214433:web:a3a67bb5bb62d892774c60",
  measurementId: "G-JE09E4BN81"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);
