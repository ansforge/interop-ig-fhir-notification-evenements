Instance: NdE-GestionnaireDeNotifications
InstanceOf: CapabilityStatement
Usage: #definition
* url = "http://esante.gouv.fr/ci-sis/fhir/CapabilityStatements/NdE.GestionnaireDeNotifications"
* version = "2.0"
* name = "NdE_GestionnaireDeNotifications"
* title = "CI-SIS Notification-D-Evenements - NdE_GestionnaireDeNotifications"
* status = #active
* experimental = false
* date = "2022-01-26T10:25:36+01:00"
* publisher = "ANS"
* description = "Le  gestionnaire  de  notifications  est  un  acteur  système  qui  envoie  les  notifications\naux  abonnés concernés  en  fonction  des  informations  recueillies  depuis  les  gestionnaires\nd’abonnements."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* implementationGuide = "http://esante.gouv.fr/ci-sis/fhir/ImplementationGuides/CI-SIS.NotificationDEvenements"
* rest.mode = #server
* rest.documentation = "Reçoit l’ordre de notification du gestionnaire d'abonnement"
* rest.security.cors = false
* rest.security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"
* rest.resource.type = #CommunicationRequest
* rest.resource.profile = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/NdE_NotificationRequestNdE"
* rest.resource.interaction.code = #create