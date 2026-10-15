# Modèle Conceptuel de Données

```mermaid
classDiagram
    class Parcelles {
        idParcelle
        nomParcelle
        surface
        coordonneesGeographiques
    }

    class Productions {
        idProduction
        nomProduction
        uniteProduction
        dateDebut
        dateFin
        quantiteProduite
    }

    class Engrais {
        idEngrais
        nomEngrais
        uniteEpandage
        proportionN
        proportionP
        proportionK
    }

    Parcelles "1..1" -- "0..n" Productions : Fournir
    Parcelles "0..n" -- "0..n" Engrais : Epandre