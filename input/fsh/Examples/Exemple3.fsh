Instance: com2
InstanceOf: NdE_EventDeclarationNdE
Usage: #example
Description: "Exemple d'une émission d'évènement pour notification de sortie du patient Robert Langdon."

* contained[0] = pat1
* contained[+] = org1

* extension[EventTime].valueDateTime = "2019-01-01T00:00:00Z"

* extension[EventType].valueCodeableConcept.coding[0].system = "https://mos.esante.gouv.fr/NOS/TRE_R254-TypeEvenement/FHIR/TRE-R254-TypeEvenement"
* extension[EventType].valueCodeableConcept.coding[0].code = #SOR
* extension[EventType].valueCodeableConcept.coding[0].display = "Sortie d'un patient de l'établissement de santé"

* status = #active
* subject = Reference(pat1)

* payload.contentAttachment.contentType = #text/plain
* payload.contentAttachment.data = "SGVsbG8="
* payload.contentAttachment.title = "Sortie du patient Robert Langdon de l'établissement de santé"
* payload.contentAttachment.creation = "2019-01-01T00:00:00Z"

* requester = Reference(org1)
