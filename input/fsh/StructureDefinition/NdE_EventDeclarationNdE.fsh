Profile: NdE_EventDeclarationNdE
Parent: CommunicationRequest
Id: nde-eventdeclaration
Title: "NdE_EventDeclarationNdE"
Description: "EmissionEvenement contient les informations nécessaires pour transmettre un évènement à un système d’information ou à un composant d’un système d’information (gestionnaire d’évènements). Un évènement peut être un dépôt de documents, une sortie d’hôpital, etc."

* ^purpose = "Profil EventDeclaratioNdE représentant le flux 3 - EmissionEvenement du volet Notification d'évènements du CI-SIS"

* obeys event-subject

* . ^short = "Ressource CommunicationRequest utilisée par le Flux 3 (EmissionEvenement)"

* contained 1..
* contained ^requirements = "Les ressources référencées par les attributs de la ressource CommunicationRequest doivent être présentes dans cet élément."

* extension contains
    NdE_EventType named EventType 1..1 and
    NdE_EventTime named EventTime 1..1
* extension[EventType] ^comment = "Elle représente le type d’évènements qui est généralement lié à la personne prise en charge (ou patient)."
* extension[EventTime] ^comment = "Date à laquelle l’évènement a eu lieu"

* subject 1..
* subject only Reference(FRCorePatientProfile or FRCorePatientINSProfile)
* subject ^definition = "The patient that is the focus of this communication request."
* subject ^type.aggregation = #contained

* payload 1..1

* authoredOn ^comment = "Date à laquelle l’évènement a été émis"

* requester 1..
* requester only Reference(FRCoreOrganizationProfile or FRCorePractitionerProfile)
* requester ^definition = "L’identification de la personne ou organisation qui a transmis l’évènement"
* requester ^requirements = "Emtteur de l'évènement"
* requester ^type.aggregation = #contained

Invariant: event-subject
Description: "L’un des attributs subject ou about doit être présent"
* severity = #error
* expression = "subject.exists() xor about.exists()"
