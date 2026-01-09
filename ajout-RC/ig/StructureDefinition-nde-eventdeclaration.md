# NdE_EventDeclarationNdE - ANS IG Example v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NdE_EventDeclarationNdE**

## Resource Profile: NdE_EventDeclarationNdE 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/[code]/StructureDefinition/nde-eventdeclaration | *Version*:0.1.0 |
| Draft as of 2026-01-09 | *Computable Name*:NdE_EventDeclarationNdE |

 
EmissionEvenement contient les informations nécessaires pour transmettre un évènement à un système d’information ou à un composant d’un système d’information (gestionnaire d’évènements). Un évènement peut être un dépôt de documents, une sortie d’hôpital, etc. 

 
Profil EventDeclaratioNdE représentant le flux 3 - EmissionEvenement du volet Notification d'évènements du CI-SIS 

**Utilisations:**

* Exemples pour ce Profil: [CommunicationRequest/com2](CommunicationRequest-com2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.[code]|current/StructureDefinition/nde-eventdeclaration)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-nde-eventdeclaration.csv), [Excel](StructureDefinition-nde-eventdeclaration.xlsx), [Schematron](StructureDefinition-nde-eventdeclaration.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "nde-eventdeclaration",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/[code]/StructureDefinition/nde-eventdeclaration",
  "version" : "0.1.0",
  "name" : "NdE_EventDeclarationNdE",
  "title" : "NdE_EventDeclarationNdE",
  "status" : "draft",
  "date" : "2026-01-09T09:23:40+00:00",
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
  "description" : "EmissionEvenement contient les informations nécessaires pour transmettre un évènement à un système d’information ou à un composant d’un système d’information (gestionnaire d’évènements). Un évènement peut être un dépôt de documents, une sortie d’hôpital, etc.",
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
  "purpose" : "Profil EventDeclaratioNdE représentant le flux 3 - EmissionEvenement du volet Notification d'évènements du CI-SIS",
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
        "short" : "Ressource CommunicationRequest utilisée par le Flux 3 (EmissionEvenement)",
        "constraint" : [
          {
            "key" : "event-subject",
            "severity" : "error",
            "human" : "L’un des attributs subject ou about doit être présent",
            "expression" : "subject.exists() xor about.exists()",
            "source" : "https://interop.esante.gouv.fr/ig/fhir/[code]/StructureDefinition/nde-eventdeclaration"
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
        "min" : 2
      },
      {
        "id" : "CommunicationRequest.extension:EventType",
        "path" : "CommunicationRequest.extension",
        "sliceName" : "EventType",
        "comment" : "Elle représente le type d’évènements qui est généralement lié à la personne prise en charge (ou patient).",
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
        "id" : "CommunicationRequest.extension:EventTime",
        "path" : "CommunicationRequest.extension",
        "sliceName" : "EventTime",
        "comment" : "Date à laquelle l’évènement a eu lieu",
        "min" : 1,
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
        "id" : "CommunicationRequest.subject",
        "path" : "CommunicationRequest.subject",
        "definition" : "The patient that is the focus of this communication request.",
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
        "id" : "CommunicationRequest.authoredOn",
        "path" : "CommunicationRequest.authoredOn",
        "comment" : "Date à laquelle l’évènement a été émis"
      },
      {
        "id" : "CommunicationRequest.requester",
        "path" : "CommunicationRequest.requester",
        "definition" : "L’identification de la personne ou organisation qui a transmis l’évènement",
        "requirements" : "Emtteur de l'évènement",
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
      }
    ]
  }
}

```
