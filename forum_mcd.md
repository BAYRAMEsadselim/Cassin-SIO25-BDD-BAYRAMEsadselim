# Modèle Relationnel de Données

Membres (#idMembre, nom, prenom, pseudonyme, motDePasse, email, niveauMembre, estModérateur, estExclu)

Themes (#idTheme, titreTheme)

Sujets (#idSujet, titreSujet, dateAjout, estVerrouille, estEnTete, #idMembrePropose, #idTheme)

Contributions (#idContribution, dateContribution, contenuMarkdown, estValidee, #idMembreAuteur, #idSujet, #idContributionParente)

PiecesJointes (#idPieceJointe, nomFichier, cheminFichier, #idContribution)

Moderations (#idMembre, #idContribution)