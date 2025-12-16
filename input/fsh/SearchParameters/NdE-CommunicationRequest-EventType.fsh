Instance: NdE-CommunicationRequest-EventType
InstanceOf: SearchParameter
Usage: #definition
* name = "NdE_CommunicationRequest_EventType"
* status = #active
* description = "Permet de filtrer sur le type d'évènement véhiculé par la ressource CommunicationRequest (dans le cadre du flux 3)"
* code = #event-type
* base = #CommunicationRequest
* type = #token
* expression = "extension(url='http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/EventType').value"
* multipleOr = true
* multipleAnd = true