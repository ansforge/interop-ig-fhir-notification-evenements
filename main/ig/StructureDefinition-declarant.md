# Declarant - Notification d'Événements v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Declarant**

## Extension: Declarant 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/declarant | *Version*:3.0.0 |
| Draft as of 2026-02-05 | *Computable Name*:NdE_Declarant |

Référence aux profils français des ressources qui identifient l’émetteur de l’évènement (Practitioner pour un professionnel, Organization pour un établissement)

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [NdE_SubscriptionNdE](StructureDefinition-nde-subscription.md)
* Exemples pour ce/t/te Extension: [Subscription/sub1](Subscription-sub1.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.nde|current/StructureDefinition/declarant)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-declarant.csv), [Excel](StructureDefinition-declarant.xlsx), [Schematron](StructureDefinition-declarant.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "declarant",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/declarant",
  "version" : "3.0.0",
  "name" : "NdE_Declarant",
  "title" : "Declarant",
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
  "description" : "Référence aux profils français des ressources qui identifient l’émetteur de l’évènement (Practitioner pour un professionnel, Organization pour un établissement)",
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
      "expression" : "Element"
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
        "short" : "Declarant",
        "definition" : "Référence aux profils français des ressources qui identifient l’émetteur de l’évènement (Practitioner pour un professionnel, Organization pour un établissement)"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/declarant"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner"
            ]
          }
        ]
      }
    ]
  }
}

```
