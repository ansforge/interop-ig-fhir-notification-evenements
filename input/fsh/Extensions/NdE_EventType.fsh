Extension: NdE_EventType
Id: event-type
Title: "Event Type"
Description: "Cette information identifie le type d’évènement qui est lié à un abonnement particulier (i.e : dépôt de document, sortie d’hôpital, etc.).."
Context: Subscription, CommunicationRequest

* value[x] only CodeableConcept
* valueCodeableConcept from $JDV-J46-TypeEvenementNotification-CI-SIS (required)