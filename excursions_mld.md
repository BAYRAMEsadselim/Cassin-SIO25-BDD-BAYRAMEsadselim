```markdown
# Modèle Relationnel de Données (MLD) - Corrigé Excursions

- **Regions** (#idRegion, nomRegion)
- **Lieux** (#idLieu, nomLieu, #idRegion)
- **Excursions** (#idExcursion, nomExcursion, dateDepart, dateRetour, tarif, nbreMaxParticipants, planCircuit, #idLieuCommence, #idLieuSeTermine)
- **Participants** (#idParticipant, nomParticipant, prenomParticipant, numTelParticipant, mailParticipant)
- **Guides** (#numLicenceGuide, nomGuide, prenomGuide, numPortable)
- **Sinscrit** (#idExcursion, #idParticipant, dateInscription)
- **Mene** (#idExcursion, #numLicenceGuide)