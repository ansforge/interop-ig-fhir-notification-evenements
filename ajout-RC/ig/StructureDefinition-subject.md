# Subject - Notification d'Événements v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Subject**

## Extension: Subject 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subject | *Version*:3.0.0 |
| Draft as of 2026-01-23 | *Computable Name*:NdE_Subject |

Référence au profil français de la ressource Patient contenant les informations relatives à la personne prise en charge (ou au patient).

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [NdE_SubscriptionNdE](StructureDefinition-nde-subscription.md)
* Exemples pour ce Extension: [Subscription/sub1](Subscription-sub1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.nde|current/StructureDefinition/subject)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-subject.csv), [Excel](StructureDefinition-subject.xlsx), [Schematron](StructureDefinition-subject.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "subject",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subject",
  "version" : "3.0.0",
  "name" : "NdE_Subject",
  "title" : "Subject",
  "status" : "draft",
  "date" : "2026-01-23T10:31:33+00:00",
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
  "description" : "Référence au profil français de la ressource Patient contenant les informations relatives à la personne prise en charge (ou au patient).",
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
        "short" : "Subject",
        "definition" : "Référence au profil français de la ressource Patient contenant les informations relatives à la personne prise en charge (ou au patient)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subject"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins"
            ]
          }
        ]
      }
    ]
  }
}

```
