```markdown
Modèle Relationnel de Données

Invites (#idInvite, nom, prenom, sexe, dateNaissance, profession)
Receptions (#idReception, dateReception)
Plats (#idPlat, nomPlat, naturePlat)
Vins (#idVin, nomVin, nomRegion, typeVin)
Apprecie (#idInvite1, #idInvite2)
ApreciePas (#idInvite1, #idInvite2)
Mange (#idInvite, #idPlat)
MangePas (#idInvite, #idPlat)
Invite (#idInvite, #idReception)
Propose (#idReception, #idPlat)
Sert (#idReception, #idVin)
SeMarieAvec (#idPlat, #idVin)