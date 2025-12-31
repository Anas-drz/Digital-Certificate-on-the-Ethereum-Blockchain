// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Certificat {

    // Rôles institutionnels
    address public directeur;
    address public president;

    // Constructeur : adresses fixées au déploiement
    constructor(address _directeur, address _president) {
        directeur = _directeur;
        president = _president;
    }

    // Structure du certificat
    struct Certif {
        string hashCertificat;      // Hash unique du diplôme
        address etudiant;           // Propriétaire (étudiant)
        bool signeParDirecteur;     // Signature directeur
        bool signeParPresident;     // Signature président
        uint256 dateCreation;       // Date de création
    }

    // Stockage des certificats
    mapping(string => Certif) private certificats;

    // =========================
    // 1️⃣ CRÉATION DU CERTIFICAT
    // =========================
    function creerCertificat(
        string memory _hash,
        address _etudiant
    ) public {
        require(certificats[_hash].dateCreation == 0, "Certificat existe deja");

        certificats[_hash] = Certif(
            _hash,
            _etudiant,
            false,
            false,
            block.timestamp
        );
    }

    // =========================
    // 2️⃣ SIGNATURE DIRECTEUR
    // =========================
    function signerParDirecteur(string memory _hash) public {
        require(msg.sender == directeur, "Acces reserve au directeur");
        require(certificats[_hash].dateCreation != 0, "Certificat inexistant");

        certificats[_hash].signeParDirecteur = true;
    }

    // =========================
    // 3️⃣ SIGNATURE PRÉSIDENT
    // =========================
    function signerParPresident(string memory _hash) public {
        require(msg.sender == president, "Acces reserve au president");
        require(certificats[_hash].dateCreation != 0, "Certificat inexistant");

        certificats[_hash].signeParPresident = true;
    }

    // =========================
    // 4️⃣ VÉRIFICATION GLOBALE
    // =========================
    function verifierCertificat(string memory _hash)
        public
        view
        returns (bool)
    {
        return
            certificats[_hash].signeParDirecteur &&
            certificats[_hash].signeParPresident;
    }

    // =========================
    // 5️⃣ ÉTAT DES SIGNATURES
    // =========================
    function getEtatCertificat(string memory _hash)
        public
        view
        returns (bool, bool)
    {
        return (
            certificats[_hash].signeParDirecteur,
            certificats[_hash].signeParPresident
        );
    }

    // =========================
    // 6️⃣ VÉRIFIER ACCÈS ÉTUDIANT
    // =========================
    function verifierAccesEtudiant(string memory _hash)
        public
        view
        returns (bool)
    {
        return certificats[_hash].etudiant == msg.sender;
    }

    // =========================
    // 7️⃣ RÉCUPÉRER L'ÉTUDIANT
    // =========================
    function getEtudiant(string memory _hash)
        public
        view
        returns (address)
    {
        return certificats[_hash].etudiant;
    }
}
