<img src=/app/assets/images/fluffy_shop.ico width="100" align="right" border-radius= "50%">

# Fluffy Shop 
Ce projet de site web e-commerce dans le style "Shopify" est une platforme qui permet d'acheter des photos de chatons mignons via Stripe et de les recevoir par mail.  
Il s'agit du projet pré-final pour la formation THP Fullstack du groupe Cozy & Fluffy.  
Lien du site en production : https://fluffyshop.herokuapp.com (hors ligne)

## Membres du groupe
- Lisa Daudibon (@LisaDaudibon)
- Karine Da Silva (@KarineDHoshi)
- Chandara Loek (@Daralafada)
- Suzanne Christé (@Suziwan)

## Versions utilisées
Ruby 3.0.0, Rails 7.0.4.2, PostgreSQL 1.1.  
Gems importantes : Stripe 5.53, Faker, Dotenv, Devise.  
Hébergement : Heroku.

## Lancement du programme
Lancer un `bundle install` pour installer les gems mentionnées.
Faire un `rails db:create db:migrate db:seed` pour créer et remplir la base de données.
Démarrer le serveur avec `rails s` pour visualiser le site sur localhost:3000.

## Diagramme ER base de données
Ci-dessous un diagramme entité-relation de la base de données utilisée :  
<img src=/app/assets/images/database_fluffyshop.png width="800">

## Vue d'ensemble du site web
Voici quelques impressions d'écran des pages du site pour une visualisation rapide:  

<kbd>
  <img src=/app/assets/images/fluffyshop_home.png width="100%">
</kbd>
&nbsp

<kbd>
  <img src=/app/assets/images/fluffyshop_products1.png width="100%">
</kbd>
&nbsp

<kbd>
  <img src=/app/assets/images/fluffyshop_products2.png width="100%">
</kbd>
&nbsp

<kbd>
  <img src=/app/assets/images/fluffyshop_products3.png width="100%">
</kbd>
&nbsp


<kbd>
  <img src=/app/assets/images/fluffyshop_products4.png width="100%">
</kbd>
&nbsp


<kbd>
  <img src=/app/assets/images/fluffyshop_products5.png width="100%">
</kbd>
&nbsp


<kbd>
  <img src=/app/assets/images/fluffyshop_login.png width="100%">
</kbd>
&nbsp


<kbd>
  <img src=/app/assets/images/fluffyshop_signup.png width="100%">
</kbd>
&nbsp