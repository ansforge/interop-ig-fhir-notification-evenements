# sub1 - ANS IG Example v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **sub1**

## Example Subscription: sub1

Profil: [NdE_SubscriptionNdE](StructureDefinition-nde-subscription.md)

**Start**: 2019-02-01 01:30:00+0100

**Subject**: [Langdon Robert Male, Date de Naissance :1960-03-20](#hcsub1/pat1)

**Declarant**: [Organization Service de pneumologie, Hôpital Test](#hcsub1/org1)

**Event Type**: Sortie

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

> **Narratif généré : Patient #pat1**Langdon Robert Male, Date de Naissance :1960-03-20
-------

| | |
| :--- | :--- |
| Coordonnées | ph: (03) 3410 5613(Mobile) |


-------

> **Narratif généré : Organisation #org1****name**: Service de pneumologie, Hôpital Test**telecom**: ph: 022-655 6780,[pneumo@hopitalTest.fr](mailto:pneumo@hopitalTest.fr)**address**: Aile ouest, étage 5

-------

> **Narratif généré : Praticien #pract1****identifier**: N° RPPS/801234567897 (utilisation : official, )**name**: Pierre Durand (Pneumologue) (Official)



## Resource Content

```json
{
  "resourceType" : "Subscription",
  "id" : "sub1",
  "meta" : {
    "profile" : [
      "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/NdE_SubscriptionNdE"
    ]
  },
  "contained" : [
    {
      "resourceType" : "Patient",
      "id" : "pat1",
      "extension" : [
        {
          "extension" : [
            {
              "url" : "identityReliability",
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
          "url" : "http://interopsante.org/fhir/StructureDefinition/FrPatientIdentReliability"
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
      "identifier" : [
        {
          "use" : "official",
          "type" : {
            "coding" : [
              {
                "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
                "code" : "RPPS",
                "display" : "N° RPPS"
              }
            ]
          },
          "system" : "urn:oid:1.2.250.1.71.4.2.1",
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
      "url" : "https://interop.esante.gouv.fr/ig/fhir/[code]/StructureDefinition/start",
      "valueDateTime" : "2019-02-01T01:30:00+01:00"
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/[code]/StructureDefinition/subject",
      "valueReference" : {
        "reference" : "#pat1"
      }
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/[code]/StructureDefinition/declarant",
      "valueReference" : {
        "reference" : "#org1"
      }
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/[code]/StructureDefinition/event-type",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R254-TypeEvenement/FHIR/TRE-R254-TypeEvenement",
            "code" : "SOR",
            "display" : "Sortie"
          }
        ]
      }
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/[code]/StructureDefinition/subscriber",
      "valueReference" : {
        "reference" : "#pract1"
      }
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/[code]/StructureDefinition/subscription-date",
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
