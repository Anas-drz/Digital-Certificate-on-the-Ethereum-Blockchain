# Digital Certificate on the Ethereum Blockchain

Ce projet est une application web décentralisée permettant la **gestion et la vérification de certificats numériques** à l’aide de la blockchain Ethereum.  
Il simule le fonctionnement réel d’une institution académique avec plusieurs rôles (directeur, président, étudiant).

---

## 🏫 Description générale
L’application permet :
- La création de certificats numériques
- Leur validation par des autorités officielles
- La consultation et la vérification des certificats par les étudiants ou le public

Chaque certificat est unique, infalsifiable et vérifiable publiquement.

---

## 👥 Rôles du système
- **Directeur** : valide le certificat en premier
- **Président** : valide le certificat en second
- **Étudiant** : propriétaire du certificat

---

## 🗂️ Structure du projet

### 📄 Fichiers principaux
- **index.html**  
  Page d’accueil de l’application

- **directeur.html**  
  Interface dédiée au directeur pour la validation des certificats

- **president.html**  
  Interface dédiée au président pour la validation finale

- **etudiant.html**  
  Interface permettant à l’étudiant de consulter son certificat

- **history.html**  
  Historique et suivi des certificats créés

---

### 🔗 Blockchain
- **certificat.sol**  
  Smart contract gérant la création, la signature et la vérification des certificats

- **contract.js**  
  Fichier de connexion entre l’interface web et la blockchain Ethereum

---

### 🎨 Interface & Design
- **style.css**  
  Feuille de style de l’application

- **Images et ressources graphiques**  
  - Logos institutionnels  
  - Signatures officielles  
  - QR code pour la vérification  
  - Images d’arrière-plan

---

## 🔎 Fonctionnalités clés
- Création de certificats uniques
- Double validation institutionnelle
- Vérification publique des certificats
- Séparation claire des rôles
- Interface simple et intuitive

---

## 🔐 Sécurité et fiabilité
- Données immuables sur la blockchain
- Accès restreint selon le rôle
- Certificats non modifiables après validation
- Vérification sans intermédiaire

---

## 📌 Cas d’utilisation
- Diplômes universitaires
- Certificats de formation
- Attestations officielles
- Validation académique ou professionnelle


---

## 👤 Auteur
**Anas**  
GitHub : https://github.com/Anas-drz
