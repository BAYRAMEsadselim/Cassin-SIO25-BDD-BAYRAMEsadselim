# Modèle Conceptuel de Données

```mermaid
classDiagram
    class Membres {
        idMembre
        nomMembre
        prenomMembre
        pseudonyme
        motDePasse
        adresseElectronique
        exclusion
    }

    class NiveauxMembre {
        idNiveau
        libelleNiveauMembre
    }

    class TypesMembre {
        idType
        typeMembre
    }

    class Themes {
        idTheme
        libelleTheme
    }

    class Sujets {
        idSujet
        libelleSujet
        dateAjout
        verrouille
    }

    class Contributions {
        idContribution
        dateContribution
        titre
        contenu
        lienPieceJointe
        contributionValidee
    }

    Membres "1..1" -- "0..n" NiveauxMembre : ACommeNiveau
    Membres "1..1" -- "0..n" TypesMembre : EstDeType
    Membres "0..n" -- "1..1" Sujets : Propose
    Membres "0..n" -- "1..1" Contributions : Redige
    Sujets "0..1" -- "0..n" Themes : Regroupe
    Contributions "0..n" -- "1..1" Sujets : Affiche
    Contributions "0..n" -- "0..1" Contributions : RepondA