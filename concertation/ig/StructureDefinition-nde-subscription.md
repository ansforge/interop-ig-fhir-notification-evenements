# NdE_SubscriptionNdE - Notification d'Événements v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NdE_SubscriptionNdE**

## Resource Profile: NdE_SubscriptionNdE 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/nde-subscription | *Version*:3.0.0 |
| Draft as of 2026-02-06 | *Computable Name*:NdE_SubscriptionNdE |

 
SouscriptionAbonnement concerne la création ou la mise à jour d’un abonnement. Un abonnement porte sur les types d'évènements qui intéressent l’abonné et qui peuvent faire l’objet d’une notification. Il est défini par l’identification de l’abonné, le média de notification à utiliser, la personne prise en charge associée aux évènements, le type d’événement donnant lieu à notification et la période de validité de l’abonnement. 

**Utilisations:**

* Référence ce Profil: [NdE_NotificationRequestNdE](StructureDefinition-nde-notificationrequest.md)
* Exemples pour ce/t/te Profil: [Subscription/sub1](Subscription-sub1.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.nde|current/StructureDefinition/nde-subscription)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-nde-subscription.csv), [Excel](StructureDefinition-nde-subscription.xlsx), [Schematron](StructureDefinition-nde-subscription.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "nde-subscription",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/nde-subscription",
  "version" : "3.0.0",
  "name" : "NdE_SubscriptionNdE",
  "status" : "draft",
  "date" : "2026-02-06T14:15:42+00:00",
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
  "description" : "SouscriptionAbonnement concerne la création ou la mise à jour d’un abonnement. Un abonnement porte sur les types d'évènements qui intéressent l’abonné et qui peuvent faire l’objet d’une notification. Il est défini par l’identification de l’abonné, le média de notification  à utiliser, la personne prise en charge associée aux évènements, le type d’événement donnant lieu à notification et la période de validité de l’abonnement.",
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
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Subscription",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Subscription",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Subscription",
        "path" : "Subscription"
      },
      {
        "id" : "Subscription.contained",
        "path" : "Subscription.contained",
        "requirements" : "Les ressources référencées par les attributs de la ressource Subscription doivent être présentes dans cet élément.",
        "min" : 1,
        "type" : [
          {
            "code" : "Patient",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins"
            ]
          },
          {
            "code" : "Practitioner",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner"
            ]
          },
          {
            "code" : "Organization",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
            ]
          },
          {
            "code" : "RelatedPerson",
            "profile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person"
            ]
          }
        ]
      },
      {
        "id" : "Subscription.extension",
        "path" : "Subscription.extension",
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
        "min" : 5
      },
      {
        "id" : "Subscription.extension:SubscriptionDate",
        "path" : "Subscription.extension",
        "sliceName" : "SubscriptionDate",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subscription-date"
            ]
          }
        ]
      },
      {
        "id" : "Subscription.extension:Start",
        "path" : "Subscription.extension",
        "sliceName" : "Start",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/start"
            ]
          }
        ]
      },
      {
        "id" : "Subscription.extension:Subject",
        "path" : "Subscription.extension",
        "sliceName" : "Subject",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subject"
            ]
          }
        ]
      },
      {
        "id" : "Subscription.extension:Declarant",
        "path" : "Subscription.extension",
        "sliceName" : "Declarant",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/declarant"
            ]
          }
        ]
      },
      {
        "id" : "Subscription.extension:EventType",
        "path" : "Subscription.extension",
        "sliceName" : "EventType",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/event-type"
            ]
          }
        ]
      },
      {
        "id" : "Subscription.extension:Subscriber",
        "path" : "Subscription.extension",
        "sliceName" : "Subscriber",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subscriber"
            ]
          }
        ]
      },
      {
        "id" : "Subscription.criteria",
        "path" : "Subscription.criteria",
        "comment" : "Cet élément doit contenir une requête de recherche sur un type de ressource géré par le gestionnaire d’abonnements. Dans le cas présent, il s’agit d’une recherche sur la ressource CommunicationRequest, représentant les déclarations d’évènements reçues par le gestionnaire d’abonnements, avec comme paramètres de recherche le type d’évènement  et l’identifiant du patient sujet de l’évènement"
      }
    ]
  }
}

```
