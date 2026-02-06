# Flux 4:TransmissionOrdreNotification - Notification d'Événements v3.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Volume 2 - Détail des transactions**](specifications_techniques_introduction.md)
* **Flux 4:TransmissionOrdreNotification**

## Flux 4:TransmissionOrdreNotification

Le **Flux 4 – TransmissionOrdreNotification** contient les informations nécessaires au gestionnaire de notifications pour émettre une notification à l’abonné.

La première étape de la construction du flux 4 de transmission d’un ordre de notification consiste à organiser son contenu. Le corps de la requête HTTP est constitué de la ressource « CommunicationRequest » (profil NotificationRequestNdE) contenant les ressources suivantes (utilisation de l’élément **contained**):

La ressource référencée comme sujet de l’évènement par l’élément subject : la ressource « Patient » utilisant le profil français FRCorePatientProfile/FRCorePatientINSProfile

La ressource référencée en tant qu’émetteur de l’évènement par l’élément requester : la ressource « Practitioner » utilisant le profil français FRCorePractitionerProfile ou « Organization » utilisant le profil français FRCoreOrganizationProfile ;

La ressource référencée en tant que destinataire de la notification par l’élément recipient:

La ressource « RelatedPerson » utilisant le profil français FRCoreRelatedPersonProfile si le destinataire est le représentant légal du patient ;

La ressource « Practitioner » utilisant le profil français FRCorePractitionerProfile ou « Organization » utilisant le profil français FRCoreOrganizationProfile si le destinataire est le professionnel ou l’organisation et qu’ils ne sont pas émetteur de l’évènement

Aucune si le destinataire est le sujet ou l’émetteur de l’évènement

La ressource CommunicationRequest ainsi formée sera envoyée dans le corps de la requête HTTP POST suivante :

```
POST [base]/CommunicationRequest

```

Où [base] est l’endpoint FHIR mis à disposition par le gestionnaire de notifications.

Si la transmission d’ordre de notification est correctement effectuée, le système Gestionnaire d’évènements doit retourner un code « 201 created » avec, dans le corps de la réponse, la ressource « CommunicationRequest ».

En cas d’erreur, le Gestionnaire de notifications doit répondre avec les codes HTTP appropriés tels que définis par l’API REST FHIR et renvoyer une ressource de type OperationOutcome dans le corps de la réponse.

