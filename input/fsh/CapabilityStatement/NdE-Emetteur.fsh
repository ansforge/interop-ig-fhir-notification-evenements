Instance: NdE-Emetteur
InstanceOf: CapabilityStatement
Usage: #definition
* version = "2.0"
* name = "NdE_Emetteur"
* title = "CI-SIS Notification-D-Evenements - NdE_Emetteur"
* status = #active
* experimental = false
* date = "2022-01-26T10:25:36+01:00"
* publisher = "ANS"
* description = "L'émetteur est un système ou sous-système qui envoie un évènement au gestionnaire\nd'évènements soit de manière automatique, soit manuellement. L'émetteur est enregistré et\nconnu par le système qui réceptionne et traite les évènements."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
// * implementationGuide = "http://esante.gouv.fr/ci-sis/fhir/ImplementationGuides/CI-SIS.NotificationDEvenements" Modifier avec le bon url
* rest.mode = #client
* rest.documentation = "Emet un évènement à destination du gestionnaire d'abonnements"
* rest.security.cors = false
* rest.security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"
* rest.resource.type = #CommunicationRequest
// * rest.resource.profile = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/NdE_EventDeclarationNdE" Modifier avec le bon url
* rest.resource.interaction.code = #create