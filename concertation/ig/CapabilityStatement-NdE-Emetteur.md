# CI-SIS Notification-D-Evenements - NdE_Emetteur - Notification d'Événements v3.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CI-SIS Notification-D-Evenements - NdE_Emetteur**

## CapabilityStatement: CI-SIS Notification-D-Evenements - NdE_Emetteur 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/nde/CapabilityStatement/NdE-Emetteur | *Version*:3.0.0-ballot |
| Active as of 2022-01-26 | *Computable Name*:NdE_Emetteur |

 
L'émetteur est un système ou sous-système qui envoie un évènement au gestionnaire d'évènements soit de manière automatique, soit manuellement. L'émetteur est enregistré et connu par le système qui réceptionne et traite les évènements. 

 [Raw OpenAPI-Swagger Definition file](NdE-Emetteur.openapi.json) | [Download](NdE-Emetteur.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "NdE-Emetteur",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/nde/CapabilityStatement/NdE-Emetteur",
  "version" : "3.0.0-ballot",
  "name" : "NdE_Emetteur",
  "title" : "CI-SIS Notification-D-Evenements - NdE_Emetteur",
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
  "description" : "L'émetteur est un système ou sous-système qui envoie un évènement au gestionnaire\nd'évènements soit de manière automatique, soit manuellement. L'émetteur est enregistré et\nconnu par le système qui réceptionne et traite les évènements.",
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
      "documentation" : "Emet un évènement à destination du gestionnaire d'abonnements",
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
    }
  ]
}

```
