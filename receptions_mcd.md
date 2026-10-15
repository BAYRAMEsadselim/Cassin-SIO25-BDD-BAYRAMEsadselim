# Modèle Conceptuel de Données

```mermaid
classDiagram
    class Invites {
        idInvite
        nom
        prenom
        sexe
        dateNaissance
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
        nomRegion
        typeVin
    }

    Invites "0..n" -- "0..n" Invites : Apprecie
    Invites "0..n" -- "0..n" Invites : ApreciePas
    Invites "0..n" -- "0..n" Plats : Mange
    Invites "0..n" -- "0..n" Plats : MangePas
    Invites "0..n" -- "1..n" Receptions : Invite
    Receptions "1..n" -- "0..n" Plats : Propose
    Receptions "1..n" -- "0..n" Vins : Sert
    Plats "1..n" -- "1..n" Vins : SeMarieAvec