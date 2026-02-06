# CI-SIS Notification-D-Evenements - NdE_Souscripteur - Notification d'Événements v3.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CI-SIS Notification-D-Evenements - NdE_Souscripteur**

## CapabilityStatement: CI-SIS Notification-D-Evenements - NdE_Souscripteur 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/nde/CapabilityStatement/NdE-Souscripteur | *Version*:3.0.0-ballot |
| Active as of 2022-01-26 | *Computable Name*:NdE_Souscripteur |

 
Un souscripteur est la personne (physique ou morale) qui est habilitée à créer, modifier ou supprimer un abonnement au service de notification d’événements. Un souscripteur peut être aussi l’abonné lui-même. 

 [Raw OpenAPI-Swagger Definition file](NdE-Souscripteur.openapi.json) | [Download](NdE-Souscripteur.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "NdE-Souscripteur",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/nde/CapabilityStatement/NdE-Souscripteur",
  "version" : "3.0.0-ballot",
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
