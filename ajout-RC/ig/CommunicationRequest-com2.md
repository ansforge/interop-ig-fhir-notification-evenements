# com2 - ANS IG Example v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **com2**

## Example CommunicationRequest: com2

Profil: [NdE_EventDeclarationNdE](StructureDefinition-nde-eventdeclaration.md)

**Event Type**: Sortie d'un patient de l'établissement de santé

**Event Time**: 2019-01-01 00:00:00+0000

**status**: Active

**subject**: [Langdon Robert Male, Date de Naissance :1960-03-20](#hccom2/pat1)

### Payloads

| | |
| :--- | :--- |
| - | **Content[x]** |
| * | text/plain : SGVsbG8= |

**requester**: [Organization Service de pneumologie, Hôpital Test](#hccom2/org1)

-------

> **Narratif généré : Patient #pat1**Langdon Robert Male, Date de Naissance :1960-03-20
-------

| | |
| :--- | :--- |
| Coordonnées | ph: (03) 3410 5613(Mobile) |


-------

> **Narratif généré : Organisation #org1****name**: Service de pneumologie, Hôpital Test**telecom**: ph: 022-655 6780,[pneumo@hopitalTest.fr](mailto:pneumo@hopitalTest.fr)**address**: Aile ouest, étage 5



## Resource Content

```json
{
  "resourceType" : "CommunicationRequest",
  "id" : "com2",
  "meta" : {
    "profile" : [
      "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/NdE_EventDeclarationNdE"
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
    }
  ],
  "status" : "active",
  "subject" : {
    "reference" : "#pat1"
  },
  "payload" : [
    {
      "contentAttachment" : {
        "contentType" : "text/plain",
        "data" : "SGVsbG8=",
        "title" : "Sortie du patient Robert Langdon de l'établissement de santé",
        "creation" : "2019-01-01T00:00:00Z"
      }
    }
  ],
  "requester" : {
    "reference" : "#org1"
  }
}

```
