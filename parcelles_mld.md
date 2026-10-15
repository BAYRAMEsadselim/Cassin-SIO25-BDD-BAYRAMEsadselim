```markdown
# Modèle Relationnel de Données

Parcelles (#idParcelle, nomParcelle, surface, coordonneesGeographiques)

Productions (#idProduction, nomProduction, uniteProduction, dateDebut, dateFin, quantiteProduite, #idParcelle)

Engrais (#idEngrais, nomEngrais, uniteEpandage, proportionN, proportionP, proportionK)

Epandre (#idParcelle, #idEngrais, dateEpandage, quantiteEpandue)