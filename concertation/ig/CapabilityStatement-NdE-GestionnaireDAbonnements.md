# CI-SIS Notification-D-Evenements - NdE_GestionnaireDAbonnements - Notification d'Événements v3.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CI-SIS Notification-D-Evenements - NdE_GestionnaireDAbonnements**

## CapabilityStatement: CI-SIS Notification-D-Evenements - NdE_GestionnaireDAbonnements 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/nde/CapabilityStatement/NdE-GestionnaireDAbonnements | *Version*:3.0.0-ballot |
| Active as of 2022-01-26 | *Computable Name*:NdE_GestionnaireDAbonnements |

 
Le gestionnaire d’abonnements est un acteur système qui stocke les abonnements et les paramètres d’usage des notifications d’événements. 

 [Raw OpenAPI-Swagger Definition file](NdE-GestionnaireDAbonnements.openapi.json) | [Download](NdE-GestionnaireDAbonnements.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "NdE-GestionnaireDAbonnements",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/nde/CapabilityStatement/NdE-GestionnaireDAbonnements",
  "version" : "3.0.0-ballot",
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
