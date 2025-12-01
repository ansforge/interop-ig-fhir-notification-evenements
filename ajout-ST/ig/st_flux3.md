# Flux 3:EmissionEvenement - ANS IG Example v0.1.0

* [**Table of Contents**](toc.md)
* [**Specifications Techniques**](specifications_techniques.md)
* **Flux 3:EmissionEvenement**

## Flux 3:EmissionEvenement

### Correspondances entre objets métier et ressources du standard HL7 FHIR

Dans cette section, une mise en correspondance est faite entre les objets identifiés à l’issue de l’étude métier de la notification d’évènements [1] et les ressources et éléments du standard HL7 FHIR.

Les sections qui suivent détaillent la mise en correspondance des informations métier [1] contenues dans les flux de la Table 2 avec les éléments des ressources[^4] FHIR correspondantes. Pour les attributs qui ne sont pas définis dans les ressources FHIR, des extensions (marquées par « **extension** ») sont définies.

Le **Flux 3 – EmissionEvenement** contient les informations nécessaires pour transmettre un évènement à un système d’information ou à un composant d’un système d’information (gestionnaire d’abonnements). Un évènement peut être un dépôt de documents, une sortie d’hôpital, etc.

| | | | |
| :--- | :--- | :--- | :--- |
| Nom Objet | Nom attribut | Ressource | Elément |
| Evènement [1..1] | typeEvenement : [1..1] Code | **CommunicationRequest** | **Extension (EventType)**JDV_J46-TypeEvenementNotification-CI-SIS |
| description : [1..1] Texte | **CommunicationRequest** | payload.content[x]: [1..1]* de type string s’il s’agit d’une description textuelle de l’évènement
* de type Attachment s’il s’agit d’un flux métier encapsulé représentant un évènement (flux ITI42-RQ encapsulé si l’évènement est un dépôt de document par exemple)
 | |
| occurrence : [1..1] DateHeure | **CommunicationRequest** | **Extension (EventTime)** | |
| declaration : [0..1] DateHeure | **CommunicationRequest** | authoredOn: dateTime [0..1] | |
| PersonnePriseEnCharge [1..1] | idPersonnePriseEnCharge : [0..1] Identifiant | **Patient****FrPatient** | identifier : Identifier [0..*] |
| adresse : [0..*] Adresse | **Patient****FrPatient** | address : FrAddress [0..*] | |
| telecommunication : [0..*] Telecommunication | **Patient****FrPatient** | telecom : FrContactPoint [0..*] | |
| PersonnePhysique [1..1] | nomFamille : [0..1] Texte | **Patient****FrPatient** | name[1..*].family : string [0..1] (FrHumanName)Slice « usualName », Patient.name.use prenant la valeur « usual » |
| prenomUsuel: [0..1] Texte | **Patient****FrPatient** | name[1..*].given : string [0..*] (FrHumanName)Slice « usualName », Patient.name.use prenant la valeur «usual » | |
| Professionnel | idPP : [0..1] Identifiant | **Practitioner****FrPractitioner** | identifier : Identifier [0..*] |
| telecommunication : [0..*] Telecommunication | **Practitioner****FrPractitioner** | telecom : FrContactPoint [0..*] | |
| adresse : [0..*] Adresse | **Practitioner****FrPractitioner** | address : FrAddress [0..*] | |
| PersonnePhysique [1..1] | nomFamille : [0..1] Texte | **Practitioner****FrPractitioner** | name[0..*].family : string [0..1](FrHumanName) |
| prenomUsuel: [0..1] Texte | **Practitioner****FrPractitioner** | name[0..*].given : string [0..*](FrHumanName) | |
| EntiteJuridique | numFINESS : [0..1] Identifiant | **Organization****FrOrganization** | identifier : Identifier [0..*] |
| addresseEJ : [0..*] Addresse | **Organization****FrOrganization** | address : FrAddress [0..*] | |
| telecommunication: [0..*] telecommunication | **Organization****FrOrganization** | telecom : FrContactPoint [0..*] | |
| raisonSociale : [0..1] Texte | **Organization****FrOrganization** | name : string [0..1] | |
| Emetteur [1..1] | idEmetteur : [1..1] Identifiant | **CommunicationRequest** | requester : Reference [0..1] |

### Contenu FHIR des flux structurés

#### Ressource « CommunicationRequest »

Le tableau ci-après liste les attributs de la ressource « CommunicationRequest » utilisés par le Flux 3- EmissionEvenement. Cette spécification technique introduit ainsi un nouveau profil pour la ressource CommunicationRequest : NdE_EventDeclarationNdE.

| | | | |
| :--- | :--- | :--- | :--- |
| contained | Resource [0..*] | Cardinalité contrainte à [1..*] | Les ressources référencées par les attributs de la ressource CommunicationRequest doivent être présentes dans cet élément. |
| identifier | Identifier [0..*] |  |  |
| **NdE_EventTime** | Extension du volet NdEdateTime [1..1] |  | Date à laquelle l’évènement a eu lieu (occurrence dans l’étude métier [1]) |
| **NdE_EventType** | Extension du volet NdECodeableConcept [1..1] |  | Cette information identifie le type d’évènement qui est lié à un abonnement particulier (i.e : dépôt de document, sortie d’hôpital, etc.).Nomenclature à utiliser : JDV_J46-TypeEvenementNotification-CI-SIS |
| basedOn | Reference [0..*] (Any) |  |  |
| replaces | Reference [0..*] (CommunicationRequest) |  |  |
| groupIdentifier | Identifier [0..1] |  |  |
| status | code [1..1]http://hl7.org/fhir/valueset-request-status.html |  | Le statut de l’émission de l’évènementValeur par défaut : active |
| statusReason | CodeableConcept [0..1] |  |  |
| category | CodeableConcept [0..*] |  |  |
| priority | code [0..1] |  |  |
| doNotPerform | boolean [0..1] |  |  |
| medium | CodeableConcept [0..*] |  |  |
| subject | Reference [0..1] (Patient|Group) | Cardinalité contrainte à [1..1]Type de la référence limité à Patient (profil FrPatient)La ressource référencée doit être présente sous l’élément CommunicationRequest.contained |  |
| about | Reference [0..*] (Any) |  |  |
| encounter | Reference [0..1] (Encounter) |  |  |
| payload | BackboneElement [0..*] | Cardinalité contrainte à [1..1] |  |
| payload.content[x] | string or Attachment or Reference [1..1] | Types possible : string ou Attachment | * de type string s’il s’agit d’une description textuelle de l’évènement
* de type Attachment s’il s’agit d’un flux métier encapsulé représentant un évènement (flux ITI42-RQ encapsulé si l’évènement est un dépôt de document par exemple)
 |
| occurrence[x] | dateTime or Period [0..1] |  |  |
| authoredOn | dateTime [0..1] |  | Date à laquelle l’évènement a été émis (« déclaration » dans l’étude métier [1]) |
| requester | Reference [0..1]([Practitioner](https://hl7.org/FHIR/healthcareservice.html)|[PractitionerRole](https://hl7.org/FHIR/practitionerrole.html)|[Organization](https://hl7.org/FHIR/relatedperson.html)|[Patient](https://hl7.org/FHIR/patient.html)|[RelatedPerson](https://hl7.org/FHIR/careteam.html)|[Device](http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/RecipientEndpoint)) | Cardinalité contrainte à [1..1]Type de la référence limité à Practitioner (profil FrPractitioner) et Organization (profil FrOrganization)La ressource référencée doit être présente sous l’élément CommunicationRequest.contained | Emetteur de l’évènement. |
| recipient | Reference [0..*]([Device](https://hl7.org/FHIR/practitionerrole.html)|[Organization](https://hl7.org/FHIR/device.html)|[Patient](https://hl7.org/FHIR/healthcareservice.html)|[Practitioner](https://hl7.org/FHIR/device.html)|[PractitionerRole](https://hl7.org/FHIR/practitionerrole.html)|[RelatedPerson](https://hl7.org/FHIR/organization.html)|[Group](https://hl7.org/FHIR/healthcareservice.html)|[CareTeam](https://hl7.org/FHIR/patient.html)|[HealthcareService](https://hl7.org/FHIR/practitionerrole.html)) |  |  |
| sender | Reference [0..1]([Device](https://hl7.org/FHIR/organization.html)|[Organization](https://hl7.org/FHIR/relatedperson.html)|[Patient](https://hl7.org/FHIR/organization.html)|[Practitioner](https://hl7.org/FHIR/organization.html)|[PractitionerRole](https://hl7.org/FHIR/organization.html)|[RelatedPerson](https://hl7.org/FHIR/relatedperson.html)|[HealthcareService](https://hl7.org/FHIR/practitioner.html)) |  |  |
| reasonCode | CodeableConcept [0..*] |  |  |
| reasonReference | Reference [0..*] (Condition | Observation | DiagnosticReport | DocumentReference) |  |  |
| note | Annotation [0..*] |  |  |

Cette spécification technique introduit plusieurs extensions applicables à la ressource FHIR et décrites dans le tableau ci-dessous.

| | | | |
| :--- | :--- | :--- | :--- |
| EventTime | [1..1] | dateTime | Id : event-timeurl : http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/eventTimeDate à laquelle l’évènement a eu lieu (occurrence dans l’étude métier [1]) |
| EventType | [1..1] | CodeableConcept | id : event-typeurl : http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/EventTypeCette information identifie le type d’évènement qui est lié à un abonnement particulier (i.e : dépôt de document, sortie d’hôpital, etc.).Nomenclature à utiliser : JDV_J46-TypeEvenementNotification-CI-SIS |

Pour les besoins du flux 1 de souscription d’abonnement, un nouveau paramètre de recherche est défini pour la ressource CommunicationRequest de façon à pouvoir filtrer les évènements par leur type.

| | | |
| :--- | :--- | :--- |
| NdE_CommunicationRequest_EventType | token | Permet de filtrer sur le type d’évènement. Ce paramètre de recherche fait référence à l’attribut value de l’extension EventType de type CodeableConcept. |

Tableau 11 Liste des paramètres de recherche supplémentaires pour la ressource CommunicationRequest

### Construction des flux

Le **Flux 3 – EmissionEvenement** contient les informations relatives à un évènement qui a eu lieu.

La première étape de la construction du flux 3 d’émission d’un évènement consiste à organiser son contenu. Le corps de la requête HTTP est constitué de la ressource « CommunicationRequest » (profil EventDeclarationNdE) contenant les ressources suivantes (utilisation de l’élément **contained**):

La ressource référencée comme sujet de l’évènement par l’élément subject : la ressource « Patient » utilisant le profil français FrPatient ;

La ressource référencée en tant qu’émetteur de l’évènement par l’élément requester: la ressource « Practitioner » utilisant le profil français FrPractitioner ou « Organization » utilisant le profil français FrOrganization

La ressource CommunicationRequest ainsi formée sera envoyée dans le corps de la requête HTTP POST suivante :

POST [base]/CommunicationRequest

Où [base] est l’endpoint FHIR mis à disposition par le gestionnaire d’abonnements.

Si l’évènement est correctement pris en compte, le système Gestionnaire d’abonnements doit retourner un code « 201 created » avec, dans le corps de la réponse, la ressource « CommunicationRequest » reçue.

En cas d’erreur, le Gestionnaire d’abonnements doit répondre avec les codes HTTP appropriés tels que définis par l’API REST FHIR et renvoyer une ressource de type OperationOutcome dans le corps de la réponse.

