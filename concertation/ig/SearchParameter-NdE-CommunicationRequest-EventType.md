# NdE-CommunicationRequest-EventType - Notification d'Événements v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NdE-CommunicationRequest-EventType**

## SearchParameter: NdE-CommunicationRequest-EventType 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/nde/SearchParameter/NdE-CommunicationRequest-EventType | *Version*:3.0.0 |
| Active as of 2026-02-06 | *Computable Name*:NdE_CommunicationRequest_EventType |

 
Permet de filtrer sur le type d'évènement véhiculé par la ressource CommunicationRequest (dans le cadre du flux 3) 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "NdE-CommunicationRequest-EventType",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/nde/SearchParameter/NdE-CommunicationRequest-EventType",
  "version" : "3.0.0",
  "name" : "NdE_CommunicationRequest_EventType",
  "status" : "active",
  "date" : "2026-02-06T14:21:59+00:00",
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
  "expression" : "extension.where(url='https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/event-type').value",
  "multipleOr" : true,
  "multipleAnd" : true
}

```
