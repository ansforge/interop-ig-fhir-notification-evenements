# NdE-CommunicationRequest-EventType - ANS IG Example v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NdE-CommunicationRequest-EventType**

## SearchParameter: NdE-CommunicationRequest-EventType 

| | |
| :--- | :--- |
| *Official URL*:http://esante.gouv.fr/ci-sis/fhir/SearchParameter/NdE_CommunicationRequest_EventType | *Version*:0.1.0 |
| Active as of 2021-12-01 | *Computable Name*:NdE_CommunicationRequest_EventType |

 
Permet de filtrer sur le type d'évènement véhiculé par la ressource CommunicationRequest (dans le cadre du flux 3) 

## NdE_CommunicationRequest_EventType

Paramètre `event-type`:`token`

Permet de filtrer sur le type d'évènement véhiculé par la ressource CommunicationRequest (dans le cadre du flux 3)

| | |
| :--- | :--- |
| Ressource | [CommunicationRequest](http://hl7.org/fhir/R4/communicationrequest.html) |
| Expression | `extension(url='http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/EventType').value` |
| Mode de traitement | Normal |
| Multiples | * multipleAnd : Le paramètre peut se répéter pour spécifier plusieurs valeurs qui doivent toutes être vraies
* multipleOr : Le paramètre peut avoir plusieurs valeurs (séparées par des virgules) dont au moins une doit être vraie
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "NdE-CommunicationRequest-EventType",
  "url" : "http://esante.gouv.fr/ci-sis/fhir/SearchParameter/NdE_CommunicationRequest_EventType",
  "version" : "0.1.0",
  "name" : "NdE_CommunicationRequest_EventType",
  "status" : "active",
  "date" : "2021-12-01",
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
  "description" : "Permet de filtrer sur le type d'évènement véhiculé par la ressource CommunicationRequest (dans le cadre du flux 3)",
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
  "code" : "event-type",
  "base" : ["CommunicationRequest"],
  "type" : "token",
  "expression" : "extension(url='http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/EventType').value",
  "xpathUsage" : "normal",
  "multipleOr" : true,
  "multipleAnd" : true
}

```
