Profile: NdE_NotificationRequestNdE
Parent: CommunicationRequest
Id: nde-notificationrequest
Description: "Ressource CommunicationRequest utilisée dans le Flux 4 - TransmissionOrdreNotification"
* ^url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/NdE_NotificationRequestNdE"
* ^version = "2.0"
* ^status = #active
* ^experimental = false
* ^date = "2021-12-01"
* ^publisher = "ASIP Santé"
* ^purpose = "Profil NotificationRequestNdE représentant le flux 4 - TransmissionOrdreNotification du volet Notification d'évènements du CI-SIS"

* obeys event-subject

* contained 1..
* contained ^requirements = "Les ressources référencées par les attributs de la ressource CommunicationRequest doivent être présentes dans cet élément."

* extension contains
    NdE_EventEmissionTime named EventEmissionTime 0..1 and
    NdE_EventTime named EventTime 0..1 and
    NdE_EventType named EventType 1..1

* extension[EventEmissionTime] ^short = "EventEmissionTime"
* extension[EventEmissionTime] ^definition = "Date à laquelle l’évènement a été émis"
* extension[EventTime] ^short = "EventTime"
* extension[EventTime] ^definition = "Date à laquelle l’évènement a eu lieu"
* extension[EventType] ^short = "EventType"
* extension[EventType] ^definition = "Le type d’évènement"

* basedOn 1..1
* basedOn only Reference(NdE_SubscriptionNdE)

* medium 1..1

* subject 1..
* subject only Reference(FRCorePatientProfile or FRCorePatientINSProfile)
* subject ^type.aggregation = #contained

* payload 1..1
* payload.content[x] ^definition = "Le détail de l’évènement"

* requester 1..
* requester only Reference(FRCoreOrganizationProfile or FRCorePractitionerProfile)
* requester ^definition = "L’identification de la personne ou organisation qui a transmis l’évènement"
* requester ^type.aggregation = #contained

* recipient 1..1
* recipient only Reference(FRCoreOrganizationProfile or FRCorePractitionerProfile or FRCorePatientProfile or FRCorePatientINSProfile or FRCoreRelatedPersonProfile)
* recipient ^type.aggregation = #contained
* recipient.extension contains NdE_RecipientEndpoint named RecipientEndpoint 1..1
