```markdown
# Modèle Relationnel de Données (MLD) - Excursions

- **REGION** (#id_region, nom_region)
- **LIEU** (#id_lieu, nom_lieu, #id_region)
- **EXCURSION** (#id_excursion, nom_excursion, tarif, nb_max_participants, plan_circuit_doc, #id_lieu_depart, #id_lieu_arrivee)
- **SESSION_EXCURSION** (#id_session, date_depart, date_retour, #id_excursion)
- **ABONNE** (#id_abonne, nom, prenom, telephone, email)
- **GUIDE** (#num_licence, nom, prenom, tel_portable)
- **INSCRIPTION** (#id_abonne, #id_session, date_inscription)
- **ENCADREMENT** (#num_licence, #id_session)
- **PHOTO** (#id_photo, url_photo, description, #id_excursion)
- **POINT_REMARQUABLE** (#id_point, nom_point, description)
- **TRAJET_POINT** (#id_excursion, #id_point, ordre_passage)