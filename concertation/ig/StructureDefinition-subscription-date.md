# Subscription Date - Notification d'Événements v3.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Subscription Date**

## Extension: Subscription Date 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subscription-date | *Version*:3.0.0-ballot |
| Draft as of 2026-02-06 | *Computable Name*:NdE_SubscriptionDate |

Date de création de l’abonnement.

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [NdE_SubscriptionNdE](StructureDefinition-nde-subscription.md)
* Exemples pour ce/t/te Extension: [Subscription/sub1](Subscription-sub1.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.nde|current/StructureDefinition/subscription-date)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-subscription-date.csv), [Excel](StructureDefinition-subscription-date.xlsx), [Schematron](StructureDefinition-subscription-date.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "subscription-date",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subscription-date",
  "version" : "3.0.0-ballot",
  "name" : "NdE_SubscriptionDate",
  "title" : "Subscription Date",
  "status" : "draft",
  "date" : "2026-02-06T15:35:13+00:00",
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
  "description" : "Date de création de l’abonnement.",
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
      "expression" : "Subscription"
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
        "short" : "Subscription Date",
        "definition" : "Date de création de l’abonnement."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subscription-date"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      }
    ]
  }
}

```
