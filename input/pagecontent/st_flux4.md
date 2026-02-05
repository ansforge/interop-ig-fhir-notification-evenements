<div style="text-align: center;">
  {% include flux4.svg %}
</div>

Le **Flux 4 – TransmissionOrdreNotification** contient les informations nécessaires au gestionnaire de
notifications pour émettre une notification à l’abonné.

La première étape de la construction du flux 4 de transmission d’un
ordre de notification consiste à organiser son contenu. Le corps de la
requête HTTP est constitué de la ressource « CommunicationRequest »
(profil NotificationRequestNdE) contenant les ressources suivantes
(utilisation de l’élément **contained**):

La ressource référencée comme sujet de l’évènement par l’élément
subject : la ressource « Patient » utilisant le profil français
FRCorePatient

La ressource référencée en tant qu’émetteur de l’évènement par l’élément
requester : la ressource « Practitioner » utilisant le profil français
FrPractitioner ou « Organization » utilisant le profil français
FrOrganization ;

La ressource référencée en tant que destinataire de la notification par
l’élément recipient:

La ressource « RelatedPerson » utilisant le profil français
FrRelatedPerson si le destinataire est le représentant légal du
patient ;

La ressource « Practitioner » utilisant le profil français
FrPractitioner ou « Organization » utilisant le profil français
FrOrganization si le destinataire est le professionnel ou l’organisation
et qu’ils ne sont pas émetteur de l’évènement

Aucune si le destinataire est le sujet ou l’émetteur de l’évènement

La ressource CommunicationRequest ainsi formée sera envoyée dans le
corps de la requête HTTP POST suivante :

```HTTP
POST [base]/CommunicationRequest
```

Où \[base\] est l’endpoint FHIR mis à disposition par le gestionnaire de
notifications.

Si la transmission d’ordre de notification est correctement effectuée,
le système Gestionnaire d’évènements doit retourner un code « 201
created » avec, dans le corps de la réponse, la ressource
« CommunicationRequest ».

En cas d’erreur, le Gestionnaire de notifications doit répondre avec les
codes HTTP appropriés tels que définis par l’API REST FHIR et renvoyer
une ressource de type OperationOutcome dans le corps de la réponse.
