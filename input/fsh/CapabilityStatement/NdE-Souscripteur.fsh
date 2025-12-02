Instance: NdE-Souscripteur
InstanceOf: CapabilityStatement
Usage: #definition
* url = "http://esante.gouv.fr/ci-sis/fhir/CapabilityStatements/NdE.Souscripteur"
* version = "2.0"
* name = "NdE_Souscripteur"
* title = "CI-SIS Notification-D-Evenements - NdE_Souscripteur"
* status = #active
* experimental = false
* date = "2022-01-26T10:25:36+01:00"
* publisher = "ANS"
* description = "Un  souscripteur  est  la  personne  (physique  ou  morale)  qui  est  habilitée  à  créer,  modifier  ou supprimer un abonnement\nau service de notification d’événements. Un souscripteur peut être aussi l’abonné lui-même."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* implementationGuide = "http://esante.gouv.fr/ci-sis/fhir/ImplementationGuides/CI-SIS.NotificationDEvenements"
* rest.mode = #client
* rest.documentation = "Emet une demande de souscription à un abonnement ou la suppression d'un abonnement à destination du gestionnaire d'abonnements"
* rest.security.cors = false
* rest.security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"
* rest.resource.type = #Subscription
* rest.resource.profile = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/NdE_SubscriptionNdE"
* rest.resource.interaction[0].code = #create
* rest.resource.interaction[+].code = #update
* rest.resource.interaction[+].code = #delete