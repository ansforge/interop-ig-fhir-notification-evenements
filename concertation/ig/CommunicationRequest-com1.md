# com1 - Notification d'Événements v3.0.0-ballot

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

> **Narratif généré : Organisation #org1**  

Profil: [FR Core Organization Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-organization.html)

**name**: Service de pneumologie, Hôpital Test**telecom**: ph: 022-655 6780, [pneumo@hopitalTest.fr](mailto:pneumo@hopitalTest.fr)**address**: Aile ouest, étage 5 

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

> **Narratif généré : Praticien #pract1**  

Profil: [FR Core Practitioner Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-practitioner.html)

**identifier**: `https://rpps.esante.gouv.fr`/801234567897**name**: Pierre Durand (Pneumologue) (Official)



## Resource Content

```json
{
  "resourceType" : "CommunicationRequest",
  "id" : "com1",
  "meta" : {
    "profile" : [
      "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/nde-notificationrequest"
    ]
  },
  "contained" : [
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
      "url" : "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/event-time",
      "valueDateTime" : "2019-01-01T00:00:00Z"
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/event-emission-time",
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
          "url" : "https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/recipient-endpoint",
          "valueUrl" : "mailto:mailto:pierre.durant@aphp.fr"
        }
      ],
      "reference" : "#pract1"
    }
  ]
}

```
