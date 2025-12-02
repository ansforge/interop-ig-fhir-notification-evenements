Instance: NdE-GestionnaireDAbonnements
InstanceOf: CapabilityStatement
Usage: #definition
* url = "http://esante.gouv.fr/ci-sis/fhir/CapabilityStatements/NdE.GestionnaireDAbonnements"
* version = "2.0"
* name = "NdE_GestionnaireDAbonnements"
* title = "CI-SIS Notification-D-Evenements - NdE_GestionnaireDAbonnements"
* status = #active
* experimental = false
* date = "2022-01-26T10:25:36+01:00"
* publisher = "ANS"
* description = "Le  gestionnaire  d’abonnements  est  un  acteur  système  qui  stocke  les\nabonnements  et  les paramètres d’usage des notifications d’événements."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* implementationGuide = "http://esante.gouv.fr/ci-sis/fhir/ImplementationGuides/CI-SIS.NotificationDEvenements"
* rest[0].mode = #client
* rest[=].documentation = "Emet une notification d'évènement à destination du Gestionnaire de Notifications"
* rest[=].security.cors = false
* rest[=].security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"
* rest[=].resource.type = #CommunicationRequest
* rest[=].resource.profile = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/NdE_NotificationRequestNdE"
* rest[=].resource.interaction.code = #create
* rest[+].mode = #server
* rest[=].documentation = "Traite les abonnements et les déclarations d'évènements"
* rest[=].security.cors = false
* rest[=].security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"
* rest[=].resource[0].type = #Subscription
* rest[=].resource[=].profile = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/NdE_SubscriptionNdE"
* rest[=].resource[=].interaction[0].code = #create
* rest[=].resource[=].interaction[+].code = #update
* rest[=].resource[=].interaction[+].code = #delete
* rest[=].resource[+].type = #CommunicationRequest
* rest[=].resource[=].profile = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/NdE_EventDeclarationNdE"
* rest[=].resource[=].interaction.code = #create