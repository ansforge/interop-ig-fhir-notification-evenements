Instance: sub1
InstanceOf: NdE_SubscriptionNdE
Usage: #example

* contained[0] = pat1
* contained[+] = org1
* contained[+] = pract1

* extension[SubscriptionDate].valueDateTime = "2019-10-01T01:30:00+01:00"

* extension[Start].valueDateTime = "2019-02-01T01:30:00+01:00"

* extension[Subject].valueReference = Reference(pat1)

* extension[Declarant].valueReference = Reference(org1)

* extension[Subscriber].valueReference = Reference(pract1)

* extension[EventType].valueCodeableConcept.coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R254-TypeEvenement/FHIR/TRE-R254-TypeEvenement"
* extension[EventType].valueCodeableConcept.coding.code = #SOR
* extension[EventType].valueCodeableConcept.coding.display = "Sortie d'un patient de l'établissement de santé"

* status = #requested
* end = "2020-02-07T13:28:17-05:00"
* reason = "Abonnement pour recevoir des notifications de sortie du patient Robert Langdon"
* criteria = "CommunicationRequest?event-type=SOR"
* channel.type = #email
* channel.endpoint = "mailto:pierre.durand@aphp.fr"

Instance: pat1
InstanceOf: FRCorePatientProfile
Usage: #inline

* extension[FRCorePatientIdentityReliabilityExtension].extension[identityStatus].valueCoding = https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445#VALI "Identité validée"
* extension[FRCorePatientIdentityReliabilityExtension].extension[validationDate].valueDate = "2020-04-22"
* extension[FRCorePatientIdentityReliabilityExtension].extension[validationMode].valueCoding = #CN "Carte nationale d'identité"
* name.use = #usual
* name.family = "Robert"
* name.given = "Langdon"
* name.prefix = "MR"
* telecom.system = #phone
* telecom.value = "(03) 3410 5613"
* telecom.use = #mobile
* telecom.rank = 1
* gender = #male
* birthDate = "1960-03-20"

Instance: org1
InstanceOf: FRCoreOrganizationProfile
Usage: #inline
* name = "Service de pneumologie, Hôpital Test"
* telecom[0].system = #phone
* telecom[=].value = "022-655 6780"
* telecom[+].system = #email
* telecom[=].value = "pneumo@hopitalTest.fr"
* telecom[=].use = #work
* address.line = "Aile ouest, étage 5"

Instance: pract1
InstanceOf: FRCorePractitionerProfile
Usage: #inline
* identifier[rpps].value = "801234567897"
* identifier[rpps].system = "https://rpps.esante.gouv.fr"
* name.use = #official
* name.family = "Durand (Pneumologue)"
* name.given = "Pierre"
* name.suffix = "DR"