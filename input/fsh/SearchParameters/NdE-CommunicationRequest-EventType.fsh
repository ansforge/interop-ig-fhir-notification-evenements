Instance: NdE-CommunicationRequest-EventType
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/ci-sis/fhir/SearchParameter/NdE_CommunicationRequest_EventType"
* version = "2.0"
* name = "NdE_CommunicationRequest_EventType"
* status = #active
* date = "2021-12-01"
* publisher = "ANS"
* description = "Permet de filtrer sur le type d'évènement véhiculé par la ressource CommunicationRequest (dans le cadre du flux 3)"
* code = #event-type
* base = #CommunicationRequest
* type = #token
* expression = "extension(url='http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/EventType').value"
* xpath = "extension[@url='http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/EventType'].value"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true