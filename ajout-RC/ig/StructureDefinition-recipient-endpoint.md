# NdE_RecipientEndpoint - ANS IG Example v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NdE_RecipientEndpoint**

## Extension: NdE_RecipientEndpoint 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/[code]/StructureDefinition/recipient-endpoint | *Version*:0.1.0 |
| Draft as of 2026-01-02 | *Computable Name*:NdE_RecipientEndpoint |

Cette information contient les données nécessaires pour contacter l’abonné

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [NdE_NotificationRequestNdE](StructureDefinition-nde-notificationrequest.md)
* Exemples pour ce Extension: [CommunicationRequest/com1](CommunicationRequest-com1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.[code]|current/StructureDefinition/recipient-endpoint)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-recipient-endpoint.csv), [Excel](StructureDefinition-recipient-endpoint.xlsx), [Schematron](StructureDefinition-recipient-endpoint.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "recipient-endpoint",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/[code]/StructureDefinition/recipient-endpoint",
  "version" : "0.1.0",
  "name" : "NdE_RecipientEndpoint",
  "status" : "draft",
  "date" : "2026-01-02T15:03:02+00:00",
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
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/[code]/StructureDefinition/recipient-endpoint"
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
