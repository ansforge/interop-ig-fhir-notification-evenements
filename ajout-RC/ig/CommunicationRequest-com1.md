# com1 - ANS IG Example v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **com1**

## Example CommunicationRequest: com1

Profil: [NdE_NotificationRequestNdE](StructureDefinition-nde-notificationrequest.md)

**Event Type**: Sortie d'un patient de l'établissement de santé

**Event Time**: 2019-01-01 00:00:00+0000

**Emission Time**: 2019-01-01 02:00:00+0000

**basedOn**: [http://serverexample.org/FHIR/Subscription/sub1](http://serverexample.org/FHIR/Subscription/sub1)

**status**: Active

**medium**: Courrier électronique

**subject**: [Langdon Robert Male, Date de Naissance :1960-03-20](#hccom1/pat1)

### Payloads

| | |
| :--- | :--- |
| - | **Content[x]** |
| * | Notifications de sortie du patient Robert Langdon |

**requester**: [Organization Service de pneumologie, Hôpital Test](#hccom1/org1)

**recipient**: [Practitioner Pierre Durand (Pneumologue) (official)](#hccom1/pract1)

-------

> **Narratif généré : Organisation #org1****name**: Service de pneumologie, Hôpital Test**telecom**: ph: 022-655 6780,[pneumo@hopitalTest.fr](mailto:pneumo@hopitalTest.fr)**address**: Aile ouest, étage 5

-------

> **Narratif généré : Patient #pat1**Langdon Robert Male, Date de Naissance :1960-03-20
-------

| | |
| :--- | :--- |
| Coordonnées | ph: (03) 3410 5613(Mobile) |


-------

> **Narratif généré : Praticien #pract1****identifier**: N° RPPS/801234567897 (utilisation : official, )**name**: Pierre Durand (Pneumologue) (Official)



## Resource Content

```json
{
  "resourceType" : "CommunicationRequest",
  "id" : "com1",
  "meta" : {
    "profile" : [
      "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/NdE_NotificationRequestNdE"
    ]
  },
  "contained" : [
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
      "url" : "https://interop.esante.gouv.fr/ig/fhir/[code]/StructureDefinition/event-type",
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
      "url" : "https://interop.esante.gouv.fr/ig/fhir/[code]/StructureDefinition/event-time",
      "valueDateTime" : "2019-01-01T00:00:00Z"
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/[code]/StructureDefinition/event-emission-time",
      "valueDateTime" : "2019-01-01T02:00:00Z"
    }
  ],
  "basedOn" : [
    {
      "reference" : "http://serverexample.org/FHIR/Subscription/sub1"
    }
  ],
  "status" : "active",
  "medium" : [
    {
      "coding" : [
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R200-CanalCommunication/FHIR/TRE-R200-CanalCommunication",
          "code" : "3",
          "display" : "Courrier électronique"
        }
      ]
    }
  ],
  "subject" : {
    "reference" : "#pat1"
  },
  "payload" : [
    {
      "contentString" : "Notifications de sortie du patient Robert Langdon"
    }
  ],
  "requester" : {
    "reference" : "#org1"
  },
  "recipient" : [
    {
      "extension" : [
        {
          "url" : "https://interop.esante.gouv.fr/ig/fhir/[code]/StructureDefinition/recipient-endpoint",
          "valueUrl" : "mailto:mailto:pierre.durant@aphp.fr"
        }
      ],
      "reference" : "#pract1"
    }
  ]
}

```
