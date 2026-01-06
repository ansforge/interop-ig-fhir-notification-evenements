# Flux 3:EmissionEvenement - ANS IG Example v0.1.0

* [**Table of Contents**](toc.md)
* [**Specifications Techniques**](specifications_techniques.md)
* **Flux 3:EmissionEvenement**

## Flux 3:EmissionEvenement

Le **Flux 3 – EmissionEvenement** contient les informations relatives à un évènement qui a eu lieu.

La première étape de la construction du flux 3 d’émission d’un évènement consiste à organiser son contenu. Le corps de la requête HTTP est constitué de la ressource « CommunicationRequest » (profil EventDeclarationNdE) contenant les ressources suivantes (utilisation de l’élément **contained**):

La ressource référencée comme sujet de l’évènement par l’élément subject : la ressource « Patient » utilisant le profil français FrPatient ;

La ressource référencée en tant qu’émetteur de l’évènement par l’élément requester: la ressource « Practitioner » utilisant le profil français FrPractitioner ou « Organization » utilisant le profil français FrOrganization

La ressource CommunicationRequest ainsi formée sera envoyée dans le corps de la requête HTTP POST suivante :

POST [base]/CommunicationRequest

Où [base] est l’endpoint FHIR mis à disposition par le gestionnaire d’abonnements.

Si l’évènement est correctement pris en compte, le système Gestionnaire d’abonnements doit retourner un code « 201 created » avec, dans le corps de la réponse, la ressource « CommunicationRequest » reçue.

En cas d’erreur, le Gestionnaire d’abonnements doit répondre avec les codes HTTP appropriés tels que définis par l’API REST FHIR et renvoyer une ressource de type OperationOutcome dans le corps de la réponse.

