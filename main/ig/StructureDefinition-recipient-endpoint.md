# NdE_RecipientEndpoint - Notification d'Événements v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NdE_RecipientEndpoint**

## Extension: NdE_RecipientEndpoint 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/recipient-endpoint | *Version*:3.0.0 |
| Draft as of 2026-02-05 | *Computable Name*:NdE_RecipientEndpoint |

Cette information contient les données nécessaires pour contacter l’abonné

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [NdE_NotificationRequestNdE](StructureDefinition-nde-notificationrequest.md)
* Exemples pour ce/t/te Extension: [CommunicationRequest/com1](CommunicationRequest-com1.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.nde|current/StructureDefinition/recipient-endpoint)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-recipient-endpoint.csv), [Excel](StructureDefinition-recipient-endpoint.xlsx), [Schematron](StructureDefinition-recipient-endpoint.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "recipient-endpoint",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/recipient-endpoint",
  "version" : "3.0.0",
  "name" : "NdE_RecipientEndpoint",
  "status" : "draft",
  "date" : "2026-02-05T15:09:09+00:00",
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
  "description" : "Cette information contient les données nécessaires pour contacter l’abonné",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "CommunicationRequest.recipient"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "definition" : "Cette information contient les données nécessaires pour contacter l’abonné"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/recipient-endpoint"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "url"
          }
        ]
      }
    ]
  }
}

```
