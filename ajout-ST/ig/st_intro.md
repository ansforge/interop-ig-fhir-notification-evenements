# Introduction - ANS IG Example v0.1.0

* [**Table of Contents**](toc.md)
* [**Specifications Techniques**](specifications_techniques.md)
* **Introduction**

## Introduction

### Introduction

Ce document présente les spécifications techniques d’interopérabilité de mise en œuvre d’un mécanisme de notifications d’événements dans le domaine sanitaire, médico-administratif, médico-social et social. Il constitue le volet Notification d’évènements du Cadre d’Interopérabilité des Systèmes d’Information de santé (CI-SIS). Sa production est basée sur les spécifications fonctionnelles [1](https://esante.gouv.fr/sites/default/files/media_entity/documents/CISIS-TEC_SPECIFICATIONS_FONCTIONNELLES_NOTIFICATION_EVENEMENTS_v1.3.pdf), l’étude des normes et standards [2](https://esante.gouv.fr/sites/default/files/media_entity/documents/CI_SIS_STANDARDS_NOTIFICATION_EVENEMENTS_V1.1.pdf) élaborés par l’ANS et disponibles sur esante.gouv.fr.

A noter que les spécifications techniques présentées dans ce document ont pour objectif d’être utilisées dans des premières implémentations (prototypes, mise en œuvre dans des environnements de tests, etc.). L’objectif est de pouvoir récolter des retours d’expériences de la mise en œuvre de la notification d’évènements avec des ressources FHIR qui peuvent encore subir des modifications de fond (la majorité des ressources FHIR utilisées dans ce document ont un niveau de maturité de 2 et 3 selon le modèle FHIR). Ces retours d’expérience pourront ensuite être partagés avec la communauté nationale et internationale de HL7 afin de stabiliser les ressources concernées.

#### Lectorat cible

Ce document s’adresse aux développeurs des interfaces interopérables des systèmes implémentant le cas d’usage « Notification d’évènements » ou à toute autre personne intervenant dans le processus de mise en place de ces interfaces.

Ces spécifications techniques s’appuient sur le standard HL7 FHIR et plus particulièrement à un sous-ensemble des ressources définies par ce standard ainsi que la notion d’extension et de profilage des ressources. Pour les opérations sur les ressources, l’API HTTP REST définie par le standard HL7 FHIR est mise en œuvre. L’hypothèse est faite que le lecteur est familier de ces concepts.

#### Standards utilisés

Ces spécifications techniques se basent sur le standard HL7 FHIR (R4). Elles font référence à un certain nombre de ressources du standard ainsi qu'aux spécifications de l'API REST FHIR, basée sur le protocole HTTP. Les ressources suivantes sont utilisées :

Subscription de niveau de maturité 3 selon le modèle de maturité élaboré par FHIR (NM3).

Patient (NMN)

Practitioner (NM3)

Organization (NM3)

RelatedPerson (NM2)

CommunicationRequest (NM2)

##### Profils utilisés

HL7 France a profilé certaines ressources FHIR. Ces profils sont utilisés dans le cadre des spécifications techniques du volet « Notification d’évènements ». Les présentes spécifications se basent sur les profils du package **hl7-france-fhir.administrative 11.2021.1**[^1]. Le tableau ci-après spécifie les profils utilisés pour les ressources et types de données mentionnés dans ce document. Les présentes spécifications définissent également des profils propres au présent volet. Pour les ressources et types de données non mentionnés dans ce tableau, le profil à utiliser est celui défini par HL7 FHIR.

| | | | |
| :--- | :--- | :--- | :--- |
| Patient | FrPatient | Profil français qui spécifie les identifiants de patient utilisés en France. Il utilise des extensions internationales et ajoute des extensions propres à la France. | |
| Practitioner | FrPractitioner | Profil français qui contraint les types d'identifiants du professionnel en France. | |
| Organization | FrOrganization | Profil français qui spécifie les types d'identifiants pour l'organisation en France, et ajoute des extensions françaises. | |
| RelatedPerson | FrRelatedPerson | Profil de la ressource RelatedPerson pour l’usage en France. |  |
| Subscription | NdE_SubscriptionNdE | Ce profil correspond à un abonnement au sens du volet Notification d’évènements | |
| CommunicationRequest | NdE_EventDeclarationNdE | Ce profil correspond à l’émission d’un évènement au sens du volet Notification d’évènements | |
| NdE_NotificationRequestNdE | Ce profil correspond à la demande d’envoi d’une notification au sens du volet Notification d’évènements | | |

**_Note éditoriale :_**

Dans l’ensemble de ce document, lorsqu’il est fait référence aux ressources Patient, Practitioner, RelatedPerson et Organization, il est entendu que le profil français (respectivement, FrPatient, FrPractioner, FrRelatedPerson et FrOrganization) doit être utilisé.

#### Utilisation

Les spécifications techniques présentées dans ce volet ne présagent pas des conditions de leur mise en œuvre dans le cadre d’un système d’information partagé. Il appartient à tout responsable de traitement de s’assurer que les services utilisant ces spécifications respectent les cadres et bonnes pratiques applicables à ce genre de service (ex. cadre juridique, ergonomie, accessibilité…).

Il est à noter que les contraintes de sécurité concernant les flux échangés ne sont pas traitées dans ce document. Celles-ci sont du ressort de chaque responsable de l’implémentation du mécanisme qui est dans l’obligation de se conformer au cadre juridique en la matière. ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S[4](https://esante.gouv.fr/securite/politique-generale-de-securite-des-systemes-d-information-de-sante)) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport[5](http://esante.gouv.fr/services/referentiels/ci-sis/espace-publication) du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS).

> Ces spécifications sont à adopter dans des implémentations expérimentales. Les ressources FHIR en lien avec la gestion d’abonnement à notifications sont en train d’être revues pour la release 5 du standard (introduction d’une nouvelle ressource Topic représentant le sujet d’un abonnement)

