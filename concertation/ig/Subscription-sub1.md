# sub1 - Notification d'Événements v3.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **sub1**

## Example Subscription: sub1

Profil: [NdE_SubscriptionNdE](StructureDefinition-nde-subscription.md)

**Start**: 2019-02-01 01:30:00+0100

**Subject**: [Langdon Robert Male, Date de Naissance :1960-03-20](#hcsub1/pat1)

**Declarant**: [Organization Service de pneumologie, Hôpital Test](#hcsub1/org1)

**Event Type**: Sortie d'un patient de l'établissement de santé

**Subscriber**: [Practitioner Pierre Durand (Pneumologue) (official)](#hcsub1/pract1)

**Subscription Date**: 2019-10-01 01:30:00+0100

**status**: Requested

**end**: 2020-02-07 13:28:17-0500

**reason**: Abonnement pour recevoir des notifications de sortie du patient Robert Langdon

**criteria**: CommunicationRequest?event-type=SOR

### Channels

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Endpoint** |
| * | Email | [pierre.durand@aphp.fr](mailto:pierre.durand@aphp.fr) |

-------

> **Narratif généré : Patient #pat1**  

Profil: [FR Core Patient Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-patient.html)

Langdon Robert Male, Date de Naissance :1960-03-20
-------

| | |
| :--- | :--- |
| Coordonnées | ph: (03) 3410 5613(Mobile) |
| FR Core Patient Ident Reliability Extension: | * identityStatus: [FR Core CodeSystem v2-0445: VALI](https://hl7.fr/ig/fhir/core/2.1.0/CodeSystem-fr-core-cs-v2-0445.html#fr-core-cs-v2-0445-VALI) (Identité validée)
* validationDate: 2020-04-22
* validationMode: [non précisé]: CN (Carte nationale d'identité)
 |


-------

> **Narratif généré : Organisation #org1**  

Profil: [FR Core Organization Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-organization.html)

**name**: Service de pneumologie, Hôpital Test**telecom**: ph: 022-655 6780, [pneumo@hopitalTest.fr](mailto:pneumo@hopitalTest.fr)**address**: Aile ouest, étage 5 

-------

> **Narratif généré : Praticien #pract1**  

Profil: [FR Core Practitioner Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-practitioner.html)

**identifier**: `https://rpps.esante.gouv.fr`/801234567897**name**: Pierre Durand (Pneumologue) (Official)



## Resource Content

```json
{
  "resourceType" : "Subscription",
  "id" : "sub1",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/nde-subscription"
    ]
  },
  "contained" : [
    {
      "resourceType" : "Patient",
      "id" : "pat1",
      "meta" : {
        "profile" : [
          "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"
        ]
      },
      "extension" : [
        {
          "extension" : [
            {
              "url" : "identityStatus",
              "valueCoding" : {
                "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445",
                "code" : "VALI",
                "display" : "Identité validée"
              }
            },
            {
              "url" : "validationDate",
              "valueDate" : "2020-04-22"
            },
            {
              "url" : "validationMode",
              "valueCoding" : {
                "code" : "CN",
                "display" : "Carte nationale d'identité"
              }
            }
          ],
          "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability"
        }
      ],
      "name" : [
        {
          "use" : "usual",
          "family" : "Robert",
          "given" : ["Langdon"],
          "prefix" : ["MR"]
        }
      ],
      "telecom" : [
        {
          "system" : "phone",
          "value" : "(03) 3410 5613",
          "use" : "mobile",
          "rank" : 1
        }
      ],
      "gender" : "male",
      "birthDate" : "1960-03-20"
    },
    {
      "resourceType" : "Organization",
      "id" : "org1",
      "meta" : {
        "profile" : [
          "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization"
        ]
      },
      "name" : "Service de pneumologie, Hôpital Test",
      "telecom" : [
        {
          "system" : "phone",
          "value" : "022-655 6780"
        },
        {
          "system" : "email",
          "value" : "pneumo@hopitalTest.fr",
          "use" : "work"
        }
      ],
      "address" : [
        {
          "line" : ["Aile ouest, étage 5"]
        }
      ]
    },
    {
      "resourceType" : "Practitioner",
      "id" : "pract1",
      "meta" : {
        "profile" : [
          "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner"
        ]
      },
      "identifier" : [
        {
          "system" : "https://rpps.esante.gouv.fr",
          "value" : "801234567897"
        }
      ],
      "name" : [
        {
          "use" : "official",
          "family" : "Durand (Pneumologue)",
          "given" : ["Pierre"],
          "suffix" : ["DR"]
        }
      ]
    }
  ],
  "extension" : [
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/start",
      "valueDateTime" : "2019-02-01T01:30:00+01:00"
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subject",
      "valueReference" : {
        "reference" : "#pat1"
      }
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/declarant",
      "valueReference" : {
        "reference" : "#org1"
      }
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/event-type",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R254-TypeEvenement/FHIR/TRE-R254-TypeEvenement",
            "code" : "SOR",
            "display" : "Sortie d'un patient de l'établissement de santé"
          }
        ]
      }
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subscriber",
      "valueReference" : {
        "reference" : "#pract1"
      }
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subscription-date",
      "valueDateTime" : "2019-10-01T01:30:00+01:00"
    }
  ],
  "status" : "requested",
  "end" : "2020-02-07T13:28:17-05:00",
  "reason" : "Abonnement pour recevoir des notifications de sortie du patient Robert Langdon",
  "criteria" : "CommunicationRequest?event-type=SOR",
  "channel" : {
    "type" : "email",
    "endpoint" : "mailto:pierre.durand@aphp.fr"
  }
}

```
