# CI-SIS Notification-D-Evenements - NdE_Souscripteur - ANS IG Example v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CI-SIS Notification-D-Evenements - NdE_Souscripteur**

## CapabilityStatement: CI-SIS Notification-D-Evenements - NdE_Souscripteur 

| | |
| :--- | :--- |
| *Official URL*:http://esante.gouv.fr/ci-sis/fhir/CapabilityStatements/NdE.Souscripteur | *Version*:0.1.0 |
| Active as of 2022-01-26 | *Computable Name*:NdE_Souscripteur |

 
Un souscripteur est la personne (physique ou morale) qui est habilitée à créer, modifier ou supprimer un abonnement au service de notification d’événements. Un souscripteur peut être aussi l’abonné lui-même. 

 [Raw OpenAPI-Swagger Definition file](NdE-Souscripteur.openapi.json) | [Download](NdE-Souscripteur.openapi.json) 

## CI-SIS Notification-D-Evenements - NdE_Souscripteur

* Version du guide dimplémentation : {0} 
* Version de FHIR : 4.0.1 
* Formats supportés : `application/fhir+xml`, `application/fhir+json`
* Publié sur : 2022-01-26 10:25:36+0100 
* Publié par : Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris 

> **Note aux implémenteurs : capacités FHIR**Toute capacité FHIR peut être 'autorisée' par le système sauf si elle est explicitement marquée comme 'SHALL NOT'. Quelques éléments sont marqués comme MAY dans le guide dimplémentation pour souligner leur pertinence potentielle pour le cas dusage.

### DOIT prendre en charge les guides d’implémentation suivants.

* http://esante.gouv.fr/ci-sis/fhir/ImplementationGuides/CI-SIS.NotificationDEvenements

## Capacités RESTful FHIR

### Mode: client

Emet une demande de souscription à un abonnement ou la suppression d'un abonnement à destination du gestionnaire d'abonnements

**Security**

> 

L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S ) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)


### Capacités par ressource/profil

#### Résumé

Le tableau récapitulatif liste les ressources faisant partie de cette configuration, et pour chaque ressource, il liste :

* Les profils pertinents (le cas échéant)
* Les interactions supportées par chaque ressource (**R**ead, **S**earch, **U**pdate, and **C**reate, are always shown, while **VR**ead, **P**atch, **D**elete, **H**istory on **I**nstance, or **H**istory on **T**les types sont seulement présents si au moins une des ressources les prend en charge.
* Les paramètres de recherche (SearchParameters) requis, recommandés, optionnels (le cas échéant).
* Les ressources liées activées pour `_include`
* Les autres ressources activées pour `_revinclude`
* Les opérations sur la ressource (le cas échéant)

| | | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [Subscription](#Subscription1-1) | [http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/NdE_SubscriptionNdE](StructureDefinition-nde-subscription.md) |  |  | y | y | y |  |  |  |  |

-------

#### Conformité de la ressource : supported Subscription

Profil système de base

[NdE_SubscriptionNdE](StructureDefinition-nde-subscription.md)

Conformité au Profil

**SHALL**

Politique de référence

Résumé des interactions

* Supporte `create`, `update`, `delete`.



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "NdE-Souscripteur",
  "url" : "http://esante.gouv.fr/ci-sis/fhir/CapabilityStatements/NdE.Souscripteur",
  "version" : "0.1.0",
  "name" : "NdE_Souscripteur",
  "title" : "CI-SIS Notification-D-Evenements - NdE_Souscripteur",
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
  "description" : "Un  souscripteur  est  la  personne  (physique  ou  morale)  qui  est  habilitée  à  créer,  modifier  ou supprimer un abonnement\nau service de notification d’événements. Un souscripteur peut être aussi l’abonné lui-même.",
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
      "documentation" : "Emet une demande de souscription à un abonnement ou la suppression d'un abonnement à destination du gestionnaire d'abonnements",
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
        }
      ]
    }
  ]
}

```
