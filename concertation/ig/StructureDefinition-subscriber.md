# Subscriber - Notification d'Événements v3.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Subscriber**

## Extension: Subscriber 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subscriber | *Version*:3.0.0-ballot |
| Draft as of 2026-02-09 | *Computable Name*:NdE_Subscriber |

Cette information identifie le type d’évènement qui est lié à un abonnement particulier (i.e : dépôt de document, sortie d’hôpital, etc.)..

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [NdE_SubscriptionNdE](StructureDefinition-nde-subscription.md)
* Exemples pour ce/t/te Extension: [Subscription/sub1](Subscription-sub1.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.nde|current/StructureDefinition/subscriber)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-subscriber.csv), [Excel](StructureDefinition-subscriber.xlsx), [Schematron](StructureDefinition-subscriber.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "subscriber",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subscriber",
  "version" : "3.0.0-ballot",
  "name" : "NdE_Subscriber",
  "title" : "Subscriber",
  "status" : "draft",
  "date" : "2026-02-09T08:07:21+00:00",
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
  "description" : "Cette information identifie le type d’évènement qui est lié à un abonnement particulier (i.e : dépôt de document, sortie d’hôpital, etc.)..",
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
        "short" : "Subscriber",
        "definition" : "Cette information identifie le type d’évènement qui est lié à un abonnement particulier (i.e : dépôt de document, sortie d’hôpital, etc.).."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subscriber"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person"
            ]
          }
        ]
      }
    ]
  }
}

```
