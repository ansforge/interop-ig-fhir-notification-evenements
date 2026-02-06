# CI-SIS Notification-D-Evenements - NdE_GestionnaireDeNotifications - Notification d'Événements v3.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CI-SIS Notification-D-Evenements - NdE_GestionnaireDeNotifications**

## CapabilityStatement: CI-SIS Notification-D-Evenements - NdE_GestionnaireDeNotifications 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/nde/CapabilityStatement/NdE-GestionnaireDeNotifications | *Version*:3.0.0-ballot |
| Active as of 2022-01-26 | *Computable Name*:NdE_GestionnaireDeNotifications |

 
Le gestionnaire de notifications est un acteur système qui envoie les notifications aux abonnés concernés en fonction des informations recueillies depuis les gestionnaires d’abonnements. 

 [Raw OpenAPI-Swagger Definition file](NdE-GestionnaireDeNotifications.openapi.json) | [Download](NdE-GestionnaireDeNotifications.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "NdE-GestionnaireDeNotifications",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/nde/CapabilityStatement/NdE-GestionnaireDeNotifications",
  "version" : "3.0.0-ballot",
  "name" : "NdE_GestionnaireDeNotifications",
  "title" : "CI-SIS Notification-D-Evenements - NdE_GestionnaireDeNotifications",
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
  "description" : "Le  gestionnaire  de  notifications  est  un  acteur  système  qui  envoie  les  notifications\naux  abonnés concernés  en  fonction  des  informations  recueillies  depuis  les  gestionnaires\nd’abonnements.",
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
      "mode" : "server",
      "documentation" : "Reçoit l’ordre de notification du gestionnaire d'abonnement",
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
