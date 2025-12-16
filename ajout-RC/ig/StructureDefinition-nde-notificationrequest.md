# NdE_NotificationRequestNdE - ANS IG Example v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NdE_NotificationRequestNdE**

## Resource Profile: NdE_NotificationRequestNdE 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/[code]/StructureDefinition/nde-notificationrequest | *Version*:0.1.0 |
| Draft as of 2025-12-16 | *Computable Name*:NdE_NotificationRequestNdE |

 
Ressource CommunicationRequest utilisée dans le Flux 4 - TransmissionOrdreNotification 

 
Profil NotificationRequestNdE représentant le flux 4 - TransmissionOrdreNotification du volet Notification d'évènements du CI-SIS 

**Utilisations:**

* Exemples pour ce Profil: [CommunicationRequest/com1](CommunicationRequest-com1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.[code]|current/StructureDefinition/nde-notificationrequest)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-nde-notificationrequest.csv), [Excel](StructureDefinition-nde-notificationrequest.xlsx), [Schematron](StructureDefinition-nde-notificationrequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "nde-notificationrequest",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/[code]/StructureDefinition/nde-notificationrequest",
  "version" : "0.1.0",
  "name" : "NdE_NotificationRequestNdE",
  "status" : "draft",
  "date" : "2025-12-16T07:50:40+00:00",
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
  "description" : "Ressource CommunicationRequest utilisée dans le Flux 4 - TransmissionOrdreNotification",
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
  "purpose" : "Profil NotificationRequestNdE représentant le flux 4 - TransmissionOrdreNotification du volet Notification d'évènements du CI-SIS",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CommunicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CommunicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "CommunicationRequest",
        "path" : "CommunicationRequest",
        "constraint" : [
          {
            "key" : "event-subject",
            "severity" : "error",
            "human" : "L’un des attributs subject ou about doit être présent",
            "expression" : "subject.exists() xor about.exists()",
            "source" : "https://interop.esante.gouv.fr/ig/fhir/[code]/StructureDefinition/nde-notificationrequest"
          }
        ]
      },
      {
        "id" : "CommunicationRequest.contained",
        "path" : "CommunicationRequest.contained",
        "requirements" : "Les ressources référencées par les attributs de la ressource CommunicationRequest doivent être présentes dans cet élément.",
        "min" : 1
      },
      {
        "id" : "CommunicationRequest.extension",
        "path" : "CommunicationRequest.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "CommunicationRequest.extension:EventEmissionTime",
        "path" : "CommunicationRequest.extension",
        "sliceName" : "EventEmissionTime",
        "short" : "EventEmissionTime",
        "definition" : "Date à laquelle l’évènement a été émis",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/[code]/StructureDefinition/event-emission-time"
            ]
          }
        ]
      },
      {
        "id" : "CommunicationRequest.extension:EventTime",
        "path" : "CommunicationRequest.extension",
        "sliceName" : "EventTime",
        "short" : "EventTime",
        "definition" : "Date à laquelle l’évènement a eu lieu",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/[code]/StructureDefinition/event-time"
            ]
          }
        ]
      },
      {
        "id" : "CommunicationRequest.extension:EventType",
        "path" : "CommunicationRequest.extension",
        "sliceName" : "EventType",
        "short" : "EventType",
        "definition" : "Le type d’évènement",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/[code]/StructureDefinition/event-type"
            ]
          }
        ]
      },
      {
        "id" : "CommunicationRequest.basedOn",
        "path" : "CommunicationRequest.basedOn",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interop.esante.gouv.fr/ig/fhir/[code]/StructureDefinition/nde-subscription"
            ]
          }
        ]
      },
      {
        "id" : "CommunicationRequest.medium",
        "path" : "CommunicationRequest.medium",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "CommunicationRequest.subject",
        "path" : "CommunicationRequest.subject",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins"
            ],
            "aggregation" : ["contained"]
          }
        ]
      },
      {
        "id" : "CommunicationRequest.payload",
        "path" : "CommunicationRequest.payload",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "CommunicationRequest.payload.content[x]",
        "path" : "CommunicationRequest.payload.content[x]",
        "definition" : "Le détail de l’évènement"
      },
      {
        "id" : "CommunicationRequest.requester",
        "path" : "CommunicationRequest.requester",
        "definition" : "L’identification de la personne ou organisation qui a transmis l’évènement",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner"
            ],
            "aggregation" : ["contained"]
          }
        ]
      },
      {
        "id" : "CommunicationRequest.recipient",
        "path" : "CommunicationRequest.recipient",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person"
            ],
            "aggregation" : ["contained"]
          }
        ]
      },
      {
        "id" : "CommunicationRequest.recipient.extension",
        "path" : "CommunicationRequest.recipient.extension",
        "min" : 1
      },
      {
        "id" : "CommunicationRequest.recipient.extension:RecipientEndpoint",
        "path" : "CommunicationRequest.recipient.extension",
        "sliceName" : "RecipientEndpoint",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/[code]/StructureDefinition/recipient-endpoint"
            ]
          }
        ]
      }
    ]
  }
}

```
