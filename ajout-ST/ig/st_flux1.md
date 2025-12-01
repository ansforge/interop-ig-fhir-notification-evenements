# Flux 1:SouscriptionAbonnement - ANS IG Example v0.1.0

* [**Table of Contents**](toc.md)
* [**Specifications Techniques**](specifications_techniques.md)
* **Flux 1:SouscriptionAbonnement**

## Flux 1:SouscriptionAbonnement

### Correspondances entre objets métier et ressources du standard HL7 FHIR

Dans cette section, une mise en correspondance est faite entre les objets identifiés à l’issue de l’étude métier de la notification d’évènements [1] et les ressources et éléments du standard HL7 FHIR.

Les sections qui suivent détaillent la mise en correspondance des informations métier [1] contenues dans les flux de la Table 2 avec les éléments des ressources[^4] FHIR correspondantes. Pour les attributs qui ne sont pas définis dans les ressources FHIR, des extensions (marquées par « **extension** ») sont définies.

Le **Flux 1 – SouscriptionAbonnement** concerne la création ou la mise à jour d’un abonnement. Un abonnement porte sur les types d'évènements qui intéressent l’abonné et qui peuvent faire l’objet d’une notification. Il est défini par l’identification de l’abonné, le média de notification[^5] à utiliser, la personne prise en charge associée aux évènements, le type d’événement donnant lieu à notification et la période de validité de l’abonnement.

La gestion des droits d’accès est hors champs des présentes spécifications et doit être appliquée par les systèmes qui gèrent les notifications en fonction de leurs politiques de sécurité.

La Table 3 contient la mise en correspondance des informations métier contenues dans ce flux avec les ressources FHIR correspondantes.

| | | | |
| :--- | :--- | :--- | :--- |
| Nom Objet | Nom attribut | Ressource | Elément |
| Abonnement | idAbonnement : [0..1] Identifiant | **Subscription** | id : id [0..1] |
| mediaDiffusion : [1..1] Code | **Subscription** | channel.type [1..1] codechannel.endpoint [0..1] url | |
| validiteDebut : [1..1] DateHeure | **Subscription** | **Extension (Start)** | |
| validiteFin : [1..1] DateHeure | **Subscription** | end [0..1] instant | |
| dateDemande : [0..1] DateHeure | **Subscription** | **Extension (SubscriptionDate)** | |
| Evènement | typeEvenement : [1..1] Code | **Subscription** | **Extension (EventType)**CodeableConceptJDV_J46-TypeEvenementNotification-CI-SIS |
| Abonné | idAbonne : [1..1] Identifiant | **Subscription** | **Extension (Subscriber)**Reference (Patient ou Practitioner ou Organization ou RelatedPerson) |
| PersonnePriseEnCharge | idPersonnePriseEnCharge : [0..1] Identifiant | **Patient****FrPatient** | identifier : Identifier [0..*] |
| adresse : [0..*] Adresse | **Patient****FrPatient** | address : FrAddress [0..*] | |
| telecommunication : [0..*] Telecommunication | **Patient****FrPatient** | telecom : FrContactPoint [0..*] | |
| PersonnePhysique | nomFamille : [0..1] Texte | **Patient****FrPatient** | name[1..*].family : string [0..1] (FrHumanName)Slice « usualName », Patient.name.use prenant la valeur « usual » |
| prenomUsuel: [0..1] Texte | **Patient****FrPatient** | name[1..*].given : string [0..*] (FrHumanName)Slice « usualName », Patient.name.use prenant la valeur « usual » | |
| Emetteur | idEmetteur : [1..1] Identifiant | **Subscription** | **Extension (Declarant)**Reference (Practitioner ou Organization) |
| Professionnel | idPP : [0..1] Identifiant | **Practitioner****FrPractitioner** | identifier : Identifier [0..*] |
| telecommunication : [0..*] Telecommunication | **Practitioner****FrPractitioner** | telecom : FrContactPoint [0..*] | |
| adresse : [0..*] Adresse | **Practitioner****FrPractitioner** | address : FrAddress [0..*] | |
| PersonnePhysique | nomFamille : [0..1] Texte | **Practitioner****FrPractitioner** | name[0..*].family : string [0..1] (FrHumanName) |
| prenomUsuel: [0..1] Texte | **Practitioner****FrPractitioner** | name[0..*].family : string [0..1] (FrHumanName) | |
| AbonnePP | idAbonnePP : [0..1] Identifiant | **Practitioner****FrPractitioner**Ou**Patient****FrPatient**Ou**RelatedPerson****FrRelatedPerson** | identifier : Identifier [0..*][1](#fn1) |
| telecommunication : [1..*] Telecommunication | telecom : FrContactPoint [0..*] | | |
| addresse : [0..*] Addresse | address : FrAddress [0..*] | | |
| TypeAbonnePP : [0..1] Type | Pas de mise en correspondance pour cet attribut qui, d’un point de vue métier, permet d’identifier le type d’abonné. On retrouve cette information au niveau du type de la ressource qui représente l’abonné. | | |
| PersonnePhysique | nomFamille : [0..1] Texte | **Practitioner****FrPractitioner**Ou**Patient****FrPatient**Ou**RelatedPerson****FrRelatedPerson** | name.family : string [0..1] |
| prenomUsuel : [0..1] Texte | name.given : string [0..1] | | |
| AbonnePM | identifiantAbonnePM : [0..1] Identifiant | **Organization****FrOrganization** | identifier : Identifier [0..*] |
| addresse : [0..*] Addresse | **Organization****FrOrganization** | address : FrAddress [0..*] | |
| telecommunication: [1..*] telecommunication | **Organization****FrOrganization** | telecom : FrContactPoint [0..*] | |
| nom : [0..1] Texte | **Organization****FrOrganization** | name : string [0..1] | |
| typeAbonnePM : [0..1] Code | **Organization****FrOrganization** | type : CodeableConcept [0..*]Slice : organizationType : CodeableConcept [0..1] | |
| EntiteJuridique | numFINESS : [0..1] Identifiant | **Organization****FrOrganization** | identifier : Identifier [0..*] |
| addresseEJ : [0..*] Addresse | **Organization****FrOrganization** | address : FrAddress [0..*] | |
| telecommunication: [0..*] telecommunication | **Organization****FrOrganization** | telecom : FrContactPoint [0..*] | |
| raisonSociale : [0..1] Texte | **Organization****FrOrganization** | name : string [0..1] | |

-------

1. Sauf pour FrRelatedPerson : identifier : Identifier [1..1][↩︎](#fnref1)

### Contenu FHIR des flux structurés

### Ressource « Subscription »

La ressource FHIR **Subscription**[^7] est utilisée pour définir un abonnement qui peut être hébergé dans un système d’information agissant comme un gestionnaire d’abonnements.

Dans le contexte de la notification d’évènements, cette ressource est utilisée pour mettre en œuvre le Flux 1[^8]-SouscriptionAbonnement.

Cette spécification technique introduit un nouveau profil pour la ressource Subscription : NdE_SubscriptionNdE.

| | | | |
| :--- | :--- | :--- | :--- |
| contained | Resource [0..*] | Cardinalité contrainte à [1..*]Type de ressource limitée à Patient, Practitioner, Organization, RelatedPerson | Les ressources référencées par les attributs de la ressource Subscription doivent être présentes dans cet élément. |
| **NdE_SubscriptionDate** | Extension du volet NdEdateTime [0..1] |  | Représente la date de création de l’abonnementLa date de création d’un abonnement peut ne pas circuler dans le flux d’échange qui concerne la création d’un abonnement et peut être automatiquement générée par le système une fois que la demande est reçue. |
| **NdE_Start** | Extension du volet NdEdateTime [1..1] |  | Cette information identifie la date de début de validité d’un abonnementStart et SubscriptionDate peuvent contenir la même date, mais pas nécessairement. |
| **NdE_Subject** | Extension du volet NdEReference (FrPatient) [1..1] |  | Référence au profil français de la ressource Patient contenant les informations relatives à la personne prise en charge (ou au patient)La ressource référencée doit être présente sous l’élément Subscription.contained |
| **NdE_Declarant** | Extension du volet NdEReference (FrPractitioner|FrOrganization) [1..1] |  | Référence aux profils français des ressources qui identifient l’émetteur de l’évènement (Practitioner pour un professionnel, Organization pour un établissement)La ressource référencée doit être présente sous l’élément Subscription.contained |
| **NdE_EventType** | Extension du volet NdECodeableConcept [1..1] |  | Cette information identifie le type d’évènement qui est lié à un abonnement particulier (i.e : dépôt de document, sortie d’hôpital, etc.).Nomenclature à utiliser : JDV_J46-TypeEvenementNotification-CI-SIS |
| **NdE_Subscriber** | Extension du volet NdEReference (FrPractitioner| FrOrganization | FrPatient | FrRelatedPerson) [1..1] |  | Cette information identifie la personne ou l’entité qui est censée recevoir les notifications.La ressource référencée doit être présente sous l’élément Subscription.contained |
| id[1](#fn1) | identifier [0..1] | Cet identifiant doit être présent dans le flux de mise à jour de l’abonnement. | Identifiant de l’abonnement |
| status | code [1..1] |  | Statut de l’abonnementhttp://hl7.org/fhir/valueset-subscription-status.html |
| contact | ContactPoint [0..*] |  | Coordonnées de la source |
| reason | String [1..1] |  | La raison de la création de l’abonnement |
| criteria[2](#fn2) | String [1..1] |  | Cet élément n’est pas défini dans l’étude métier. Cependant, c’est un élément obligatoire dans le standard FHIR.Il doit contenir une requête de recherche sur un type de ressource géré par le gestionnaire d’abonnements. Dans le cas présent, il s’agit d’une recherche sur la ressource CommunicationRequest, représentant les déclarations d’évènements reçues par le gestionnaire d’abonnements, avec comme paramètres de recherche le type d’évènement[3](#fn3)et l’identifiant du patient sujet de l’évènement |
| end | Instant [0..1] |  | Date et heure de fin de l’abonnement |
| error | string [0..1] |  | La dernière erreur survenue à l’envoie d’une notification |
| Channel.type[4](#fn4) | code [1..1] |  | Type du media[5](#fn5)de diffusion |
| Channel.endpoint | url [0..1] |  | Il s’agit du endpoint à utiliser pour envoyer les notifications |
| Channel.payload | code [0..1] |  | MIME type à envoyer ou à omettre s’il y a pas de payload |
| Channel.header | string [0..*] |  | Dépend du type de channel |

-------

1. Cet identifiant permet de référencer la ressource au sein du ou des système(s) d’information l’hébergeant, il peut être utilisé par les clients pour les suppressions, mises à jour…[↩︎](#fnref1)
1. Exemple de recherche pour un évènement de type « dépôt de document » pour un patient dont l’identifiant est connu : CommunicationRequest?subject.identifier=urn:oid:1.2.3.4.5|PATID12334&event-type=https://mos.esante.gouv.fr/NOS/TRE_R254-TypeEvenement/FHIR/TRE-R254-TypeEvenement|DOC[↩︎](#fnref2)
1. Ce paramètre de recherche référence une extension, un nouveau paramètre de recherche pour la ressource CommunicationRequest est défini au niveau de la section 2.2.6.1.[↩︎](#fnref3)
1. https://www.hl7.org/fhir/valueset-subscription-channel-type.html[↩︎](#fnref4)
1. Un média de notification est le canal par lequel la notification est envoyée à l’abonné (ex. sms, mail, pop-up dans une application…)[↩︎](#fnref5)

Cette spécification technique introduit plusieurs extensions applicables à la ressource FHIR et décrites dans le tableau ci-dessous.

| | | | |
| :--- | :--- | :--- | :--- |
| NdE_SubscriptionDate | [0..1] | dateTime | Id : subscription-dateurl : http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/SubscriptionDateReprésente la date de création de l’abonnementLa date de création d’un abonnement peut ne pas circuler dans le flux d’échange qui concerne la création d’un abonnement et peut être automatiquement générée par le système une fois que la demande est reçue. |
| NdE_Start | [1..1] | dateTime | id : starturl : http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/StartCette information identifie la date de début de validité d’un abonnementStart et SubscriptionDate peuvent contenir la même date, mais pas nécessairement. |
| NdE_Subject | [1..1] | Reference (FrPatient) | id : subjecturl : http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/SubjectRéférence au profil français de la ressource Patient contenant les informations relatives à la personne prise en charge (ou au patient)La ressource référencée doit être présente sous l’élément Subscription.contained |
| NdE_Declarant | [1..1] | Reference (FrPractitioner|FrOrganization) | id : declaranturl : http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/DeclarantRéférence aux profils français des ressources qui identifient l’émetteur de l’évènement (Practitioner pour un professionnel, Organization pour un établissement)La ressource référencée doit être présente sous l’élément Subscription.contained |
| NdE_EventType | [1..1] | CodeableConcept | id : event-typeurl : http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/EventTypeCette information identifie le type d’évènement qui est lié à un abonnement particulier (i.e : dépôt de document, sortie d’hôpital, etc.).Nomenclature à utiliser : JDV_J46-TypeEvenementNotification-CI-SIS |
| NdE_Subscriber | [1..1] | Reference (FrPractitioner| FrOrganization | FrPatient | FrRelatedPerson) | id : subscriberurl : http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/SubscriberCette information identifie la personne ou l’entité qui est censée recevoir les notifications.La ressource référencée doit être présente sous l’élément Subscription.contained |

### Construction des flux

**Flux 1 – SouscriptionAbonnement** contient les informations relatives à la souscription d’un abonnement pour un type d’évènement déterminé ou la mise à jour de celui-ci.

La première étape de la construction du flux 1 de souscription d’un abonnement consiste à organiser son contenu. Le corps de la requête HTTP est constitué de la ressource « Subscription » contenant les ressources suivantes (utilisation de l’élément **contained**):

La ressource référencée comme personne prise en charge par l’extension Subject : la ressource « Patient » utilisant le profil français FrPatient ;

La ressource référencée en tant qu’émetteur de l’évènement par l’extension Declarant : la ressource « Practitioner » utilisant le profil français FrPractitioner ou « Organization » utilisant le profil français FrOrganization

La ressource référencée en tant qu’abonné par l’extension Subscriber:

La ressource « RelatedPerson » utilisant le profil français FrRelatedPerson si l’abonné n’est ni la personne prise en charge, ni l’émetteur de l’évènement

La ressource « Organization » utilisant le profil français FrOrganization ou « Practitioner » utilisant le profil français FrPractitioner si l’abonné est différent de l’émetteur

Aucune si l’abonné est le patient ou l’émetteur lui-même

Pour la création d’un nouvel abonnement, la ressource Subscription ainsi formée sera envoyée dans le corps de la requête HTTP POST suivante :

POST [base]/Subscription

Où [base] est l’endpoint FHIR mis à disposition par le gestionnaire d’abonnements.

Si la souscription à l’abonnement est correctement effectuée, le système Gestionnaire d’abonnements doit retourner un code « 201 created » avec, dans le corps de la réponse, la ressource « Subscription » nouvellement créée avec l’élément id peuplé.

Dans le cas d’une mise à jour, l’opération PUT est utilisée. La ressource Subscription telle que définie ci-dessus sera envoyée dans le corps de la requête HTTP PUT suivante :

PUT [base]/Subscription/[id]

Où [base] est l’endpoint FHIR mis à disposition par le gestionnaire d’abonnements et [id] correspond à l’élément id de la ressource incluse dans le corps de la requête.

Si la mise à jour de l’abonnement est correctement effectuée, le système Gestionnaire d’abonnement doit retourner un code « 200 OK », avec dans le corps de la réponse, la ressource « Subscription » mise à jour.

Pour la création comme pour la mise à jour, en cas d’erreur, le Gestionnaire d’abonnements doit répondre avec les codes HTTP appropriés tels que définis par l’API REST FHIR et renvoyer une ressource de type OperationOutcome dans le corps de la réponse.

