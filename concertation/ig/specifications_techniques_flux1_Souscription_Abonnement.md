# Flux 1:SouscriptionAbonnement - Notification d'Événements v3.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Volume 2 - Détail des transactions**](specifications_techniques_introduction.md)
* **Flux 1:SouscriptionAbonnement**

## Flux 1:SouscriptionAbonnement

**Flux 1 – SouscriptionAbonnement** contient les informations relatives à la souscription d’un abonnement pour un type d’évènement déterminé ou la mise à jour de celui-ci.

La première étape de la construction du flux 1 de souscription d’un abonnement consiste à organiser son contenu. Le corps de la requête HTTP est constitué de la ressource « Subscription » contenant les ressources suivantes (utilisation de l’élément **contained**):

La ressource référencée comme personne prise en charge par l’extension Subject : la ressource « Patient » utilisant le profil français FRCorePatientProfile/FRCorePatientINSProfile ;

La ressource référencée en tant qu’émetteur de l’évènement par l’extension Declarant : la ressource « Practitioner » utilisant le profil français FRCorePractitionerProfile ou « Organization » utilisant le profil français FRCoreOrganizationProfile

La ressource référencée en tant qu’abonné par l’extension Subscriber:

La ressource « RelatedPerson » utilisant le profil français FRCoreRelatedPersonProfile si l’abonné n’est ni la personne prise en charge, ni l’émetteur de l’évènement

La ressource « Organization » utilisant le profil français FRCoreOrganizationProfile ou « Practitioner » utilisant le profil français FRCorePractitionerProfile si l’abonné est différent de l’émetteur

Aucune si l’abonné est le patient ou l’émetteur lui-même

Pour la création d’un nouvel abonnement, la ressource Subscription ainsi formée sera envoyée dans le corps de la requête HTTP POST suivante :

```
POST [base]/Subscription

```

Où [base] est l’endpoint FHIR mis à disposition par le gestionnaire d’abonnements.

Si la souscription à l’abonnement est correctement effectuée, le système Gestionnaire d’abonnements doit retourner un code « 201 created » avec, dans le corps de la réponse, la ressource « Subscription » nouvellement créée avec l’élément id peuplé.

Dans le cas d’une mise à jour, l’opération PUT est utilisée. La ressource Subscription telle que définie ci-dessus sera envoyée dans le corps de la requête HTTP PUT suivante :

```
PUT [base]/Subscription/[id]

```

Où [base] est l’endpoint FHIR mis à disposition par le gestionnaire d’abonnements et [id] correspond à l’élément id de la ressource incluse dans le corps de la requête.

Si la mise à jour de l’abonnement est correctement effectuée, le système Gestionnaire d’abonnement doit retourner un code « 200 OK », avec dans le corps de la réponse, la ressource « Subscription » mise à jour.

Pour la création comme pour la mise à jour, en cas d’erreur, le Gestionnaire d’abonnements doit répondre avec les codes HTTP appropriés tels que définis par l’API REST FHIR et renvoyer une ressource de type OperationOutcome dans le corps de la réponse.

