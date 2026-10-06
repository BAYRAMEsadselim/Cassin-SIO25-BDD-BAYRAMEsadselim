# Modèle Conceptuel de Données (MCD)

```mermaid
classDiagram
    class Regions {
        idRegion
        nomRegion
    }

    class Lieux {
        idLieu
        nomLieu
    }

    class Excursions {
        idExcursion
        nomExcursion
        dateDepart
        dateRetour
        tarif
        nbreMaxParticipants
        planCircuit
    }

    class Participants {
        idParticipant
        nomParticipant
        prenomParticipant
        numTelParticipant
        mailParticipant
    }

    class Guides {
        numLicenceGuide
        nomGuide
        prenomGuide
        numPortable
    }

    Lieux "0..n" --> "1..1" Regions : EstSitue
    Excursions "0..n" --> "1..1" Lieux : Commence
    Excursions "0..n" --> "1..1" Lieux : SeTermine
    
    Participants "0..n" -- "1..n" Excursions : Sinscrit
    Guides "0..n" -- "1..n" Excursions : Mene