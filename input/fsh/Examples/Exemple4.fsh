Instance: com1
InstanceOf: NdE_NotificationRequestNdE
Usage: #example
Description: "Exemple de demande de notification pour sortie du patient Robert Langdon."

* contained[0] = org1
* contained[+] = pat1
* contained[+] = pract1

* extension[EventTime].valueDateTime = "2019-01-01T00:00:00Z"
* extension[EventEmissionTime].valueDateTime = "2019-01-01T02:00:00Z"

* extension[EventType].valueCodeableConcept.coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R254-TypeEvenement/FHIR/TRE-R254-TypeEvenement"
* extension[EventType].valueCodeableConcept.coding.code = #SOR
* extension[EventType].valueCodeableConcept.coding.display = "Sortie d'un patient de l'établissement de santé"

* basedOn = Reference(http://serverexample.org/FHIR/Subscription/sub1)
* status = #active
* medium = $TRE-R200-CanalCommunication#3 "Courrier électronique"
* subject = Reference(pat1)
* requester = Reference(org1)

* recipient.extension[RecipientEndpoint].valueUrl = "mailto:mailto:pierre.durant@aphp.fr"
* recipient = Reference(pract1)

* payload.contentString = "Notifications de sortie du patient Robert Langdon"
