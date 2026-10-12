Modèle Relationnel de Données

Personnes (#idPersonne, nomPersonne, prenomPersonne, sexe, age, profession)
Receptions (#idReception, dateReception)
Plats (#idPlat, nomPlat, naturePlat)
Vins (#idVin, nomVin, regionViticole, typeVin)
EtreInvite (#idPersonne, #idReception)
ProposerPlat (#idReception, #idPlat)
ProposerVin (#idReception, #idVin)
Accorder (#idPlat, #idVin)
Aimer (#idPersonne, #idPlat)
Detester (#idPersonne, #idPlat)
RelationSociale (#idPersonne1, #idPersonne2, typeRelation)