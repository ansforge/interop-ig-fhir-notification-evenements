Extension: NdE_Subscriber
Id: subscriber
Title: "Subscriber"
Description: "Cette information identifie le type d’évènement qui est lié à un abonnement particulier (i.e : dépôt de document, sortie d’hôpital, etc.).."
Context: Subscription

* value[x] only Reference
* valueReference only Reference(FRCorePatientProfile or FRCorePatientINSProfile or FRCorePractitionerProfile or FRCoreOrganizationProfile or FRCoreRelatedPersonProfile)
