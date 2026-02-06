# Artifacts Summary - Notification d'Événements v3.0.0-ballot

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [CI-SIS Notification-D-Evenements - NdE_Emetteur](CapabilityStatement-NdE-Emetteur.md) | L'émetteur est un système ou sous-système qui envoie un évènement au gestionnaire d'évènements soit de manière automatique, soit manuellement. L'émetteur est enregistré et connu par le système qui réceptionne et traite les évènements. |
| [CI-SIS Notification-D-Evenements - NdE_GestionnaireDAbonnements](CapabilityStatement-NdE-GestionnaireDAbonnements.md) | Le gestionnaire d’abonnements est un acteur système qui stocke les abonnements et les paramètres d’usage des notifications d’événements. |
| [CI-SIS Notification-D-Evenements - NdE_GestionnaireDeNotifications](CapabilityStatement-NdE-GestionnaireDeNotifications.md) | Le gestionnaire de notifications est un acteur système qui envoie les notifications aux abonnés concernés en fonction des informations recueillies depuis les gestionnaires d’abonnements. |
| [CI-SIS Notification-D-Evenements - NdE_Souscripteur](CapabilityStatement-NdE-Souscripteur.md) | Un souscripteur est la personne (physique ou morale) qui est habilitée à créer, modifier ou supprimer un abonnement au service de notification d’événements. Un souscripteur peut être aussi l’abonné lui-même. |

### Behavior: Search Parameters 

These define the properties by which a RESTful server can be searched. They can also be used for sorting and including related resources.

| | |
| :--- | :--- |
| [NdE-CommunicationRequest-EventType](SearchParameter-NdE-CommunicationRequest-EventType.md) | Permet de filtrer sur le type d'évènement véhiculé par la ressource CommunicationRequest (dans le cadre du flux 3) |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [NdE_EventDeclarationNdE](StructureDefinition-nde-eventdeclaration.md) | EmissionEvenement contient les informations nécessaires pour transmettre un évènement à un système d’information ou à un composant d’un système d’information (gestionnaire d’évènements). Un évènement peut être un dépôt de documents, une sortie d’hôpital, etc. |
| [NdE_NotificationRequestNdE](StructureDefinition-nde-notificationrequest.md) | Ressource CommunicationRequest utilisée dans le Flux 4 - TransmissionOrdreNotification |
| [NdE_SubscriptionNdE](StructureDefinition-nde-subscription.md) | SouscriptionAbonnement concerne la création ou la mise à jour d’un abonnement. Un abonnement porte sur les types d'évènements qui intéressent l’abonné et qui peuvent faire l’objet d’une notification. Il est défini par l’identification de l’abonné, le média de notification à utiliser, la personne prise en charge associée aux évènements, le type d’événement donnant lieu à notification et la période de validité de l’abonnement. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Declarant](StructureDefinition-declarant.md) | Référence aux profils français des ressources qui identifient l’émetteur de l’évènement (Practitioner pour un professionnel, Organization pour un établissement) |
| [Emission Time](StructureDefinition-event-emission-time.md) | Cette information identifie la date l’heure de l’émission d’un évènement. |
| [Event Time](StructureDefinition-event-time.md) | Date à laquelle l’évènement a eu lieu. |
| [Event Type](StructureDefinition-event-type.md) | Cette information identifie le type d’évènement qui est lié à un abonnement particulier (i.e : dépôt de document, sortie d’hôpital, etc.).. |
| [NdE_RecipientEndpoint](StructureDefinition-recipient-endpoint.md) | Cette information contient les données nécessaires pour contacter l’abonné |
| [Start](StructureDefinition-start.md) | Cette information identifie la date de début de validité d’un abonnement. |
| [Subject](StructureDefinition-subject.md) | Référence au profil français de la ressource Patient contenant les informations relatives à la personne prise en charge (ou au patient). |
| [Subscriber](StructureDefinition-subscriber.md) | Cette information identifie le type d’évènement qui est lié à un abonnement particulier (i.e : dépôt de document, sortie d’hôpital, etc.).. |
| [Subscription Date](StructureDefinition-subscription-date.md) | Date de création de l’abonnement. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [com1](CommunicationRequest-com1.md) | Exemple de demande de notification pour sortie du patient Robert Langdon. |
| [com2](CommunicationRequest-com2.md) | Exemple d'une émission d'évènement pour notification de sortie du patient Robert Langdon. |
| [sub1](Subscription-sub1.md) |  |

