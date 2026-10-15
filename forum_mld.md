# Modèle Conceptuel de Données

```mermaid
classDiagram
    class Membres {
        idMembre
        nom
        prenom
        pseudonyme
        motDePasse
        email
        niveauMembre
        estModérateur
        estExclu
    }

    class Themes {
        idTheme
        titreTheme
    }

    class Sujets {
        idSujet
        titreSujet
        dateAjout
        estVerrouille
        estEnTete
    }

    class Contributions {
        idContribution
        dateContribution
        contenuMarkdown
        estValidee
    }

    class PiecesJointes {
        idPieceJointe
        nomFichier
        cheminFichier
    }

    Themes "0..1" -- "0..n" Sujets : Regrouper
    Membres "1..1" -- "0..n" Sujets : Proposer
    Membres "1..1" -- "0..n" Contributions : Ecrire
    Sujets "1..1" -- "1..n" Contributions : Contenir
    Contributions "0..1" -- "0..n" Contributions : Repondre
    Contributions "1..1" -- "0..1" PiecesJointes : Joindre
    Membres "0..n" -- "0..n" Contributions : Moderere