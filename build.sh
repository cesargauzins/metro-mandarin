#!/bin/sh
# Génère index.html (page autonome pour GitHub Pages) à partir de metro-mandarin.html,
# avec Firebase (connexion Google + Firestore) pour le classement partagé.
{
  printf '%s\n' '<!doctype html><html lang="fr"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover"><style>:root{color-scheme:light;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0;font:14px system-ui,sans-serif}img{max-width:100%}[hidden]{display:none!important}</style>'
  printf '%s\n' '<script src="https://www.gstatic.com/firebasejs/10.14.1/firebase-app-compat.js"></script>'
  printf '%s\n' '<script src="https://www.gstatic.com/firebasejs/10.14.1/firebase-auth-compat.js"></script>'
  printf '%s\n' '<script src="https://www.gstatic.com/firebasejs/10.14.1/firebase-firestore-compat.js"></script>'
  printf '%s\n' '<script>window.MM_FIREBASE={apiKey:"AIzaSyD15KElceMEIBRFkcMSRNypqJsrgdyswis",authDomain:"metro-mandarin.firebaseapp.com",projectId:"metro-mandarin",storageBucket:"metro-mandarin.firebasestorage.app",messagingSenderId:"327518137929",appId:"1:327518137929:web:e5f32986f38ab12dd3d998"};</script>'
  printf '%s\n' '</head><body>'
  cat metro-mandarin.html
  printf '\n%s\n' '</body></html>'
} > index.html
