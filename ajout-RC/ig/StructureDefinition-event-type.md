# Event Type - Notification d'Événements v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Event Type**

## Extension: Event Type 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/event-type | *Version*:3.0.0 |
| Draft as of 2026-01-16 | *Computable Name*:NdE_EventType |

Cette information identifie le type d’évènement qui est lié à un abonnement particulier (i.e : dépôt de document, sortie d’hôpital, etc.)..

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [NdE_EventDeclarationNdE](StructureDefinition-nde-eventdeclaration.md), [NdE_NotificationRequestNdE](StructureDefinition-nde-notificationrequest.md) and [NdE_SubscriptionNdE](StructureDefinition-nde-subscription.md)
* Exemples pour ce Extension: [CommunicationRequest/com1](CommunicationRequest-com1.md), [CommunicationRequest/com2](CommunicationRequest-com2.md) and [Subscription/sub1](Subscription-sub1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.nde|current/StructureDefinition/event-type)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-event-type.csv), [Excel](StructureDefinition-event-type.xlsx), [Schematron](StructureDefinition-event-type.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "event-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/event-type",
  "version" : "3.0.0",
  "name" : "NdE_EventType",
  "title" : "Event Type",
  "status" : "draft",
  "date" : "2026-01-16T10:55:18+00:00",
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
    },
    {
      "type" : "element",
      "expression" : "CommunicationRequest"
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
        "short" : "Event Type",
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
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/event-type"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J46-TypeEvenementNotification-CISIS/FHIR/JDV-J46-TypeEvenementNotification-CISIS"
        }
      }
    ]
  }
}

```
