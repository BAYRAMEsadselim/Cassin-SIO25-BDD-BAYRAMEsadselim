# Modèle Conceptuel de Données (MCD) - Excursions

```mermaid
classDiagram
    class REGION {
        +int id_region
        +string nom_region
    }

    class LIEU {
        +int id_lieu
        +string nom_lieu
    }

    class EXCURSION {
        +int id_excursion
        +string nom_excursion
        +float tarif
        +int nb_max_participants
        +string plan_circuit_doc
    }

    class SESSION_EXCURSION {
        +int id_session
        +date date_depart
        +date date_retour
    }

    class ABONNE {
        +int id_abonne
        +string nom
        +string prenom
        +string telephone
        +string email
    }

    class GUIDE {
        +string num_licence
        +string nom
        +string prenom
        +string tel_portable
    }

    class PHOTO {
        +int id_photo
        +string url_photo
        +string description
    }

    class POINT_REMARQUABLE {
        +int id_point
        +string nom_point
        +string description
    }

    LIEU "1..*" --> "1..1" REGION : Situer
    EXCURSION "0..*" --> "1..1" LIEU : PartirDe
    EXCURSION "0..*" --> "1..1" LIEU : ArriverA
    SESSION_EXCURSION "1..*" --> "1..1" EXCURSION : Organiser
    PHOTO "0..*" --> "1..1" EXCURSION : Illustrer
    
    ABONNE "0..*" -- "0..*" SESSION_EXCURSION : S_Inscrire
    GUIDE "0..*" -- "1..*" SESSION_EXCURSION : Mener
    POINT_REMARQUABLE "0..*" -- "0..*" EXCURSION : Composer