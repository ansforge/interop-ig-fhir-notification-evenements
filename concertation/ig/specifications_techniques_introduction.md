# Volume 2 - Détail des transactions - Notification d'Événements v3.0.0-ballot

* [**Table of Contents**](toc.md)
* **Volume 2 - Détail des transactions**

## Volume 2 - Détail des transactions

### Introduction

Ce document présente les spécifications techniques d’interopérabilité de mise en œuvre d’un mécanisme de notifications d’événements dans le domaine sanitaire, médico-administratif, médico-social et social. Il constitue le volet Notification d’évènements du Cadre d’Interopérabilité des Systèmes d’Information de santé (CI-SIS). Sa production est basée sur les [spécifications fonctionnelles](specifications_fonctionnelles.md), [l’étude des normes et standards](norme_standard.md) élaborés par l’ANS et disponibles sur esante.gouv.fr.

A noter que les spécifications techniques présentées dans ce document ont pour objectif d’être utilisées dans des premières implémentations (prototypes, mise en œuvre dans des environnements de tests, etc.). L’objectif est de pouvoir récolter des retours d’expériences de la mise en œuvre de la notification d’évènements avec des ressources FHIR qui peuvent encore subir des modifications de fond (la majorité des ressources FHIR utilisées dans ce document ont un niveau de maturité de 2 et 3 selon le modèle FHIR). Ces retours d’expérience pourront ensuite être partagés avec la communauté nationale et internationale de HL7 afin de stabiliser les ressources concernées.

#### Standards utilisés

Ces spécifications techniques se basent sur le standard HL7 FHIR (R4). Elles font référence à un certain nombre de ressources du standard ainsi qu'aux spécifications de l'API REST FHIR, basée sur le protocole HTTP. Les ressources suivantes sont utilisées :

Subscription de niveau de maturité 3 selon le modèle de maturité élaboré par FHIR (NM3).

Patient (NMN)

Practitioner (NM3)

Organization (NM3)

RelatedPerson (NM2)

CommunicationRequest (NM2)

##### Profils utilisés

HL7 France a profilé certaines ressources FHIR. Ces profils sont utilisés dans le cadre des spécifications techniques du volet « Notification d’évènements ». Les présentes spécifications se basent sur le guide d'implémentation [Fr Core](https://hl7.fr/ig/fhir/core/2.1.0/). Le tableau ci-après spécifie les profils utilisés pour les ressources et types de données mentionnés dans ce document. Les présentes spécifications définissent également des profils propres au présent volet. Pour les ressources et types de données non mentionnés dans ce tableau, le profil à utiliser est celui défini par HL7 FHIR.

**_Note éditoriale :_**

Dans l’ensemble de ce document, lorsqu’il est fait référence aux ressources Patient, Practitioner, RelatedPerson et Organization, il est entendu que le profil français (respectivement, FRCorePatientProfile, FRCorePatientINSProfile, FRCorePractitionerProfile, FRCoreRelatedPersonProfile et FRCoreOrganizationProfile) doit être utilisé.

#### Utilisation

Les spécifications techniques présentées dans ce volet ne présagent pas des conditions de leur mise en œuvre dans le cadre d’un système d’information partagé. Il appartient à tout responsable de traitement de s’assurer que les services utilisant ces spécifications respectent les cadres et bonnes pratiques applicables à ce genre de service (ex. cadre juridique, ergonomie, accessibilité…).

Il est à noter que les contraintes de sécurité concernant les flux échangés ne sont pas traitées dans ce document. Celles-ci sont du ressort de chaque responsable de l’implémentation du mécanisme qui est dans l’obligation de se conformer au cadre juridique en la matière. ANS propose des référentiels dédiés à la politique de sécurité (la [PGSSI-S](https://esante.gouv.fr/securite/politique-generale-de-securite-des-systemes-d-information-de-sante)) et des mécanismes de sécurisation sont définis dans les volets de la [couche Transport](http://esante.gouv.fr/services/referentiels/ci-sis/espace-publication) du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS).

> Ces spécifications sont à adopter dans des implémentations expérimentales. Les ressources FHIR en lien avec la gestion d’abonnement à notifications ont été revues pour la release 5 et backporté en R4 (http://hl7.org/fhir/uv subscriptions-backport) avec l'introduction d’une nouvelle ressource SubscriptionTopic représentant le sujet d’un abonnement. sont en train d’être revues pour la release 5 du standard (introduction d’une nouvelle ressource Topic représentant le sujet d’un abonnement)

