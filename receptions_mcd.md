# Modèle Conceptuel de Données (MCD) - Exercice Réceptions

```mermaid
classDiagram
    class Personnes {
        idPersonne
        nomPersonne
        prenomPersonne
        sexe
        age
        profession
    }

    class Receptions {
        idReception
        dateReception
    }

    class Plats {
        idPlat
        nomPlat
        naturePlat
    }

    class Vins {
        idVin
        nomVin
        regionViticole
        typeVin
    }

    Personnes "0..n" -- "0..n" Receptions : EtreInvite
    Receptions "0..n" -- "1..n" Plats : ProposerPlat
    Receptions "0..n" -- "0..n" Vins : ProposerVin
    Plats "0..n" -- "0..n" Vins : Accorder
    Personnes "0..n" -- "0..n" Plats : Aimer
    Personnes "0..n" -- "0..n" Plats : Detester
    Personnes "0..n" -- "0..n" Personnes : RelationSociale