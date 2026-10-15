```markdown
# Modèle Relationnel de Données

NiveauxMembre (#idNiveau, libelleNiveauMembre)
TypesMembre (#idType, typeMembre)
Membres (#idMembre, nomMembre, prenomMembre, pseudonyme, motDePasse, adresseElectronique, exclusion, #idNiveau, #idType)
Themes (#idTheme, libelleTheme)
Sujets (#idSujet, libelleSujet, dateAjout, verrouille, #idMembre, #idTheme)
Contributions (#idContribution, dateContribution, titre, contenu, lienPieceJointe, contributionValidee, #idMembre, #idSujet, #idContribution_RepondA)