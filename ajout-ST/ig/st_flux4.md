# Flux 4:TransmissionOrdreNotification - ANS IG Example v0.1.0

* [**Table of Contents**](toc.md)
* [**Specifications Techniques**](specifications_techniques.md)
* **Flux 4:TransmissionOrdreNotification**

## Flux 4:TransmissionOrdreNotification

### Correspondances entre objets métier et ressources du standard HL7 FHIR

Dans cette section, une mise en correspondance est faite entre les objets identifiés à l’issue de l’étude métier de la notification d’évènements [1] et les ressources et éléments du standard HL7 FHIR.

Les sections qui suivent détaillent la mise en correspondance des informations métier [1] contenues dans les flux de la Table 2 avec les éléments des ressources[^4] FHIR correspondantes. Pour les attributs qui ne sont pas définis dans les ressources FHIR, des extensions (marquées par « **extension** ») sont définies.

Le **Flux 4 – TransmissionOrdreNotification** contient les informations constituant la consolidation des informations nécessaires à la transmission d’un ordre de notification[^6].

| | | | |
| :--- | :--- | :--- | :--- |
| Nom Objet | Nom attribut | Ressource | Elément |
| Abonnement [1..1] | idAbonnement : [1..1] Identifiant | **CommunicationRequest** | basedOn [0..*] Reference |
| mediaDiffusion : [1..1] Code | **CommunicationRequest** | medium [0..*] CodeableConcept**Extension (RecipientEndpoint)** | |
| PersonnePriseEnCharge [0..1] | idPersonnePriseEnCharge : [0..1] Identifiant | **Patient****FrPatient** | identifier : Identifier [0..*] |
| telecommunication : [0..*] Telecommunication | **Patient****FrPatient** | telecom : FrContactPoint [0..*] | |
| PersonnePhysique [1..1] | nomFamille : [0..1] Texte | **Patient****FrPatient** | name[1..*].family : string [0..1] (FrHumanName)Slice « usualName », Patient.name.use prenant la valeur « usual » |
| prenomUsuel: [0..1] Texte | **Patient****FrPatient** | name[1..*].given : string [0..*] (FrHumanName)Slice « usualName », Patient.name.use prenant la valeur «usual » | |
| Professionnel [0..1] | idPP : [0..1] Identifiant | **Practitioner****FrPractitioner** | identifier : Identifier [0..*] |
| telecommunication : [0..*] Telecommunication | **Practitioner****FrPractitioner** | telecom : FrContactPoint [0..*] | |
| PersonnePhysique [0..1] | nomFamille : [0..1] Texte | **Practitioner****FrPractitioner** | name[0..*].family : string [0..1](FrHumanName) |
| prenomUsuel: [0..1] Texte | **Practitioner****FrPractitioner** | name[0..*].given : string [0..*](FrHumanName) | |
| EntiteJuridique [0..1] | numFINESS : [0..1] Identifiant | **Organization****FrOrganization** | identifier : Identifier [0..*] |
| telecommunication: [0..*] telecommunication | **Organization****FrOrganization** | telecom : FrContactPoint [0..*] | |
| raisonSociale : [0..1] Texte | **Organization****FrOrganization** | name : string [0..1] | |
| Emetteur [0..1] | idEmetteur : [1..1] Identifiant | **Practitioner****FrPractitioner**ou**Organization****FrOrganization** | identifier : Identifier [0..*] |
| Evènement [0..1] | typeEvenement : [0..1] Code | **CommunicationRequest** | **Extension (EventType)**JDV_J46-TypeEvenementNotification-CI-SIS |
| description [1..1] Texte | **CommunicationRequest** | payload.contentString : string [1..1]Cet élément doit être de type string pour ne contenir qu’une description de l’évènement formulée par l’émetteur de l’évènement ou par le gestionnaire d’abonnements si nécessaire. Il ne doit pas contenir de flux métier encapsulé. | |
| occurence [0..1] DateHeure | **CommunicationRequest** | **Extension (EventTime)** | |
| declaration [0..1] DateHeure | **CommunicationRequest** | **Extension (EventEmissionTime)** | |
| Abonné [1..1] | idAbonne : [1..1] Identifiant | **CommunicationRequest** | Recipient : Reference [0..*] |
| AbonnePP [0..1] | idAbonnePP : [0..1] Identifiant | **Practitioner****FrPractitioner**Ou**Patient****FrPatient**Ou**RelatedPerson****FrRelatedPerson** | identifier : Identifier [0..*][1](#fn1) |
| telecommunication : [1..*] Telecommunication | telecom : FrContactPoint [0..*] | | |
| TypeAbonnePP : [0..1] Type | Pas de mise en correspondance pour cet attribut qui, d’un point de vue métier, permet d’identifier le type d’abonné. On retrouve cette information au niveau du type de la ressource qui représente l’abonné. | | |
| PersonnePhysique [1..1] | nomFamille : [0..1] Texte | **Practitioner****FrPractitioner** | name[0..*].family : string [0..1](FrHumanName) |
| prenomUsuel: [0..1] Texte | **Practitioner****FrPractitioner** | name[0..*].given : string [0..*](FrHumanName) | |
| AbonnePM [0..1] | identifiantAbonnePM : [0..1] Identifiant | **Organization****FrOrganization** | identifier : Identifier [0..*] |
| telecommunication: [1..*] telecommunication | **Organization****FrOrganization** | telecom : FrContactPoint [0..*] | |
| nom : [0..1] Texte | **Organization****FrOrganization** | name : string [0..1] | |
| typeAbonnePM : [0..1] Code | **Organization****FrOrganization** | type : CodeableConcept [0..*]Slice : organizationType : CodeableConcept [0..1] | |

-------

1. Sauf pour FrRelatedPerson : identifier : Identifier [1..1][↩︎](#fnref1)

### Contenu FHIR des flux structurés

#### Ressource « CommunicationRequest »

Le tableau suivant liste les attributs de la ressource « CommunicationRequest » qui sont utilisés par le Flux 4-TransmissionOrdreNotification. Cette spécification technique introduit ainsi un nouveau profil pour la ressource CommunicationRequest : NdE_NotificationRequestNdE.

| | | | |
| :--- | :--- | :--- | :--- |
| contained | Resource [0..*] | Cardinalité contrainte à [1..*] | Les ressources référencées par les attributs de la ressource CommunicationRequest doivent être présentes dans cet élément. |
| **NdE_EventTime** | Extension du volet NdEdateTime [0..1] |  | Date à laquelle l’évènement a eu lieu (occurrence dans l’étude métier [1]) |
| **NdE_EventType** | Extension du volet NdECodeableConcept [1..1] |  | Cette information identifie le type d’évènement qui est lié à un abonnement particulier (i.e : dépôt de document, sortie d’hôpital, etc.). |
| **NdE_EventEmissionTime** | Extension du volet NdEdateTime [0..1] |  | Cette information identifie la date l’heure de l’émission d’un évènement (i.e : dépôt de document, sortie d’hôpital, etc.) |
| **NdE_RecipientEndpoint** | Extension du volet NdEurl [1..1] |  | Extension de l’élément recipient. Cette information contient les données nécessaires pour contacter l’abonné. Correspond à la valeur de l’élément Channel.endpoint de la ressource Subscription représentant l’abonnement. |
| identifier | Identifier [0..1] |  |  |
| basedOn | Reference [0..*] (Any) | Cardinalité contrainte à [1..1]Type de la référence contrainte à Subscription et au profil NdE_SubscriptionNdE | Référence à l’abonnement qui a déclenché l’ordre d’envoi de notification |
| replaces | Reference [0..*] (CommunicationRequest) |  |  |
| groupIdentifier | Identifier [0..1] |  |  |
| status | code [1..1]http://hl7.org/fhir/valueset-request-status.html |  | Le statut de l’émission de l’évènementValeur par défaut : active |
| statusReason | CodeableConcept [0..1] |  |  |
| category | CodeableConcept [0..*] |  |  |
| priority | code [0..1] |  |  |
| doNotPerform | boolean [0..1] |  |  |
| medium | CodeableConcept [0..*] | Cardinalité contrainte à [1..1] | mediaDiffusion dans l’étude métier |
| subject | Reference [0..1] (Patient | Group) | Cardinalité contrainte à [1..1]Type de la référence limité à Patient (profil FrPatient)La ressource référencée doit être présente sous l’élément CommunicationRequest.contained |  |
| about | Reference [0..*] (Any) |  |  |
| encounter | Reference [0..1] (Encounter) |  |  |
| payload | BackboneElement [0..*] | Cardinalité contrainte à [1..1] |  |
| payload.content[x] | string or Attachment or Reference [1..1] | De type string | Cet élément doit être de type string pour ne contenir qu’une description de l’évènement formulée par l’émetteur de l’évènement ou par le gestionnaire d’abonnements si nécessaire. Il ne doit pas contenir de flux métier encapsulé. |
| occurrence[x] | dateTime or Period [0..1] |  |  |
| authoredOn | dateTime [0..1] |  |  |
| requester | Reference [0..1]([Practitioner](https://hl7.org/FHIR/healthcareservice.html)|[PractitionerRole](https://hl7.org/FHIR/practitionerrole.html)|[Organization](https://hl7.org/FHIR/patient.html)|[Patient](https://hl7.org/FHIR/patient.html)|[RelatedPerson](https://hl7.org/FHIR/device.html)|[Device](https://hl7.org/FHIR/practitioner.html)) | Type de la référence limité à Practitioner (profil FrPractitioner) et Organization (profil FrOrganization)La ressource référencée doit être présente sous l’élément CommunicationRequest.contained | Emetteur de l’évènement. |
| recipient | Reference [0..*]([Device](https://hl7.org/FHIR/group.html)|[Organization](https://hl7.org/FHIR/relatedperson.html)|[Patient](https://hl7.org/FHIR/device.html)|[Practitioner](https://hl7.org/FHIR/device.html)|[PractitionerRole](https://hl7.org/FHIR/organization.html)|[RelatedPerson](https://hl7.org/FHIR/relatedperson.html)|[Group](https://hl7.org/FHIR/careteam.html)|[CareTeam](https://hl7.org/FHIR/practitioner.html)|[HealthcareService](https://hl7.org/FHIR/practitioner.html)) | Cardinalité contrainte à [1..1]Type de la référence limité à Practitioner (profil FrPractitioner), Patient (profil FrPatient), Organization (profil FrOrganization) et RelatedPerson (profil FrRelatedPerson)La ressource référencée doit être présente sous l’élément CommunicationRequest.contained |  |
| sender | Reference [0..1]([Device](https://hl7.org/FHIR/relatedperson.html)|[Organization](https://hl7.org/FHIR/practitioner.html)|[Patient](https://hl7.org/FHIR/practitioner.html)|[Practitioner](https://hl7.org/FHIR/device.html)|[PractitionerRole](https://hl7.org/FHIR/patient.html)|[RelatedPerson](https://hl7.org/FHIR/group.html)|[HealthcareService](https://hl7.org/FHIR/patient.html)) |  |  |
| reasonCode | CodeableConcept [0..*] |  |  |
| reasonReference | Reference [0..*] |  |  |
| note | Annotation [0..*] |  |  |

Cette spécification technique introduit plusieurs extensions applicables à la ressource FHIR et décrites dans le tableau ci-dessous.

| | | | |
| :--- | :--- | :--- | :--- |
| NdE_EventTime | [0..1] | dateTime | Id : event-timeurl : http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/eventTimeDate à laquelle l’évènement a eu lieu (occurrence dans l’étude métier [1]) |
| NdE_EventType | [1..1] | CodeableConcept | id : event-typeurl : http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/EventTypeCette information identifie le type d’évènement qui est lié à un abonnement particulier (i.e : dépôt de document, sortie d’hôpital, etc.). |
| NdE_EventEmissionTime | [0..1] | dateTime | id : event-emission-timeurl : http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/EventEmissionTimeCette information identifie la date l’heure de l’émission d’un évènement (i.e : dépôt de document, sortie d’hôpital, etc.) |
| NdE_RecipientEndpoint | [1..1] | url | id : recipient-endpointurl :[http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/RecipientEndpoint](https://hl7.org/FHIR/practitionerrole.html)Extension de l’élément recipient. Cette information contient les données nécessaires pour contacter l’abonné. Correspond à la valeur de l’élément Channel.endpoint de la ressource Subscription représentant l’abonnement. |

### Construction des flux

Le **Flux 4 – TransmissionOrdreNotification** contient les informations nécessaires au gestionnaire de notifications pour émettre une notification à l’abonné.

La première étape de la construction du flux 4 de transmission d’un ordre de notification consiste à organiser son contenu. Le corps de la requête HTTP est constitué de la ressource « CommunicationRequest » (profil NotificationRequestNdE) contenant les ressources suivantes (utilisation de l’élément **contained**):

La ressource référencée comme sujet de l’évènement par l’élément subject : la ressource « Patient » utilisant le profil français FrPatient

La ressource référencée en tant qu’émetteur de l’évènement par l’élément requester : la ressource « Practitioner » utilisant le profil français FrPractitioner ou « Organization » utilisant le profil français FrOrganization ;

La ressource référencée en tant que destinataire de la notification par l’élément recipient:

La ressource « RelatedPerson » utilisant le profil français FrRelatedPerson si le destinataire est le représentant légal du patient ;

La ressource « Practitioner » utilisant le profil français FrPractitioner ou « Organization » utilisant le profil français FrOrganization si le destinataire est le professionnel ou l’organisation et qu’ils ne sont pas émetteur de l’évènement

Aucune si le destinataire est le sujet ou l’émetteur de l’évènement

La ressource CommunicationRequest ainsi formée sera envoyée dans le corps de la requête HTTP POST suivante :

POST [base]/CommunicationRequest

Où [base] est l’endpoint FHIR mis à disposition par le gestionnaire de notifications.

Si la transmission d’ordre de notification est correctement effectuée, le système Gestionnaire d’évènements doit retourner un code « 201 created » avec, dans le corps de la réponse, la ressource « CommunicationRequest ».

En cas d’erreur, le Gestionnaire de notifications doit répondre avec les codes HTTP appropriés tels que définis par l’API REST FHIR et renvoyer une ressource de type OperationOutcome dans le corps de la réponse.

