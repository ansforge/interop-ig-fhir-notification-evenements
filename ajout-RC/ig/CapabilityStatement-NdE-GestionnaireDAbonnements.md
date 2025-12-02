# CI-SIS Notification-D-Evenements - NdE_GestionnaireDAbonnements - ANS IG Example v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CI-SIS Notification-D-Evenements - NdE_GestionnaireDAbonnements**

## CapabilityStatement: CI-SIS Notification-D-Evenements - NdE_GestionnaireDAbonnements 

| | |
| :--- | :--- |
| *Official URL*:http://esante.gouv.fr/ci-sis/fhir/CapabilityStatements/NdE.GestionnaireDAbonnements | *Version*:0.1.0 |
| Active as of 2022-01-26 | *Computable Name*:NdE_GestionnaireDAbonnements |

 
Le gestionnaire d’abonnements est un acteur système qui stocke les abonnements et les paramètres d’usage des notifications d’événements. 

 [Raw OpenAPI-Swagger Definition file](NdE-GestionnaireDAbonnements.openapi.json) | [Download](NdE-GestionnaireDAbonnements.openapi.json) 

## CI-SIS Notification-D-Evenements - NdE_GestionnaireDAbonnements

* Version du guide dimplémentation : {0} 
* Version de FHIR : 4.0.1 
* Formats supportés : `application/fhir+xml`, `application/fhir+json`
* Publié sur : 2022-01-26 10:25:36+0100 
* Publié par : Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris 

> **Note aux implémenteurs : capacités FHIR**Toute capacité FHIR peut être 'autorisée' par le système sauf si elle est explicitement marquée comme 'SHALL NOT'. Quelques éléments sont marqués comme MAY dans le guide dimplémentation pour souligner leur pertinence potentielle pour le cas dusage.

### DOIT prendre en charge les guides d’implémentation suivants.

* http://esante.gouv.fr/ci-sis/fhir/ImplementationGuides/CI-SIS.NotificationDEvenements

## Capacités RESTful FHIR

### Configuration REST : 1 

#### Mode: client

Emet une notification d'évènement à destination du Gestionnaire de Notifications

**Security**

> 

L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S ) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)


#### Capacités par ressource/profil

##### Résumé

Le tableau récapitulatif liste les ressources faisant partie de cette configuration, et pour chaque ressource, il liste :

* Les profils pertinents (le cas échéant)
* Les interactions supportées par chaque ressource (**R**ead, **S**earch, **U**pdate, and **C**reate, are always shown, while **VR**ead, **P**atch, **D**elete, **H**istory on **I**nstance, or **H**istory on **T**les types sont seulement présents si au moins une des ressources les prend en charge.
* Les paramètres de recherche (SearchParameters) requis, recommandés, optionnels (le cas échéant).
* Les ressources liées activées pour `_include`
* Les autres ressources activées pour `_revinclude`
* Les opérations sur la ressource (le cas échéant)

| | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [CommunicationRequest](#CommunicationRequest1-1) | [http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/NdE_NotificationRequestNdE](StructureDefinition-nde-notificationrequest.md) |  |  |  | y |  |  |  |  |

-------

##### Conformité de la ressource : supported CommunicationRequest

Profil système de base

[NdE_NotificationRequestNdE](StructureDefinition-nde-notificationrequest.md)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `create`.

### Configuration REST : 2 

#### Mode: server

Traite les abonnements et les déclarations d'évènements

**Security**

> 

L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S ) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)


#### Capacités par ressource/profil

##### Résumé

Le tableau récapitulatif liste les ressources faisant partie de cette configuration, et pour chaque ressource, il liste :

* Les profils pertinents (le cas échéant)
* Les interactions supportées par chaque ressource (**R**ead, **S**earch, **U**pdate, and **C**reate, are always shown, while **VR**ead, **P**atch, **D**elete, **H**istory on **I**nstance, or **H**istory on **T**les types sont seulement présents si au moins une des ressources les prend en charge.
* Les paramètres de recherche (SearchParameters) requis, recommandés, optionnels (le cas échéant).
* Les ressources liées activées pour `_include`
* Les autres ressources activées pour `_revinclude`
* Les opérations sur la ressource (le cas échéant)

| | | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [Subscription](#Subscription2-1) | [http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/NdE_SubscriptionNdE](StructureDefinition-nde-subscription.md) |  |  | y | y | y |  |  |  |  |
| [CommunicationRequest](#CommunicationRequest2-2) | [http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/NdE_EventDeclarationNdE](StructureDefinition-nde-eventdeclaration.md) |  |  |  | y |  |  |  |  |  |

-------

##### Conformité de la ressource : supported Subscription

Profil système de base

[NdE_SubscriptionNdE](StructureDefinition-nde-subscription.md)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `create`, `update`, `delete`.

##### Conformité de la ressource : supported CommunicationRequest

Profil système de base

[NdE_EventDeclarationNdE](StructureDefinition-nde-eventdeclaration.md)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `create`.



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "NdE-GestionnaireDAbonnements",
  "url" : "http://esante.gouv.fr/ci-sis/fhir/CapabilityStatements/NdE.GestionnaireDAbonnements",
  "version" : "0.1.0",
  "name" : "NdE_GestionnaireDAbonnements",
  "title" : "CI-SIS Notification-D-Evenements - NdE_GestionnaireDAbonnements",
  "status" : "active",
  "experimental" : false,
  "date" : "2022-01-26T10:25:36+01:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [
    {
      "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "Le  gestionnaire  d’abonnements  est  un  acteur  système  qui  stocke  les\nabonnements  et  les paramètres d’usage des notifications d’événements.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["application/fhir+xml", "application/fhir+json"],
  "implementationGuide" : [
    "http://esante.gouv.fr/ci-sis/fhir/ImplementationGuides/CI-SIS.NotificationDEvenements"
  ],
  "rest" : [
    {
      "mode" : "client",
      "documentation" : "Emet une notification d'évènement à destination du Gestionnaire de Notifications",
      "security" : {
        "cors" : false,
        "description" : "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"
      },
      "resource" : [
        {
          "type" : "CommunicationRequest",
          "profile" : "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/NdE_NotificationRequestNdE",
          "interaction" : [
            {
              "code" : "create"
            }
          ]
        }
      ]
    },
    {
      "mode" : "server",
      "documentation" : "Traite les abonnements et les déclarations d'évènements",
      "security" : {
        "cors" : false,
        "description" : "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"
      },
      "resource" : [
        {
          "type" : "Subscription",
          "profile" : "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/NdE_SubscriptionNdE",
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "update"
            },
            {
              "code" : "delete"
            }
          ]
        },
        {
          "type" : "CommunicationRequest",
          "profile" : "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/NdE_EventDeclarationNdE",
          "interaction" : [
            {
              "code" : "create"
            }
          ]
        }
      ]
    }
  ]
}

```
