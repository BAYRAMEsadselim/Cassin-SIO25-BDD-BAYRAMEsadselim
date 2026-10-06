# Modèle Conceptuel de Données (MCD) - Corrigé Excursions

```mermaid
classDiagram
    class Regions {
        +int idRegion
        +string nomRegion
    }

    class Lieux {
        +int idLieu
        +string nomLieu
    }

    class Excursions {
        +int idExcursion
        +string nomExcursion
        +date dateDepart
        +date dateRetour
        +float tarif
        +int nbreMaxParticipants
        +string planCircuit
    }

    class Participants {
        +int idParticipant
        +string nomParticipant
        +string prenomParticipant
        +string numTelParticipant
        +string mailParticipant
    }

    class Guides {
        +string numLicenceGuide
        +string nomGuide
        +string prenomGuide
        +string numPortable
    }

    Lieux "0..*" --> "1..1" Regions : EstSitue
    Excursions "0..*" --> "1..1" Lieux : Commence
    Excursions "0..*" --> "1..1" Lieux : SeTermine
    
    Participants "0..*" -- "1..*" Excursions : Sinscrit
    Guides "0..*" -- "1..*" Excursions : Mene