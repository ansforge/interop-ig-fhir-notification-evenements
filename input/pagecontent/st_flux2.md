
La demande de suppression d’un abonnement est réalisée en émettant une
requête HTTP DELETE au gestionnaire d’abonnements. L’identifiant de la
ressource Subscription (id) est utilisé pour permettre au Gestionnaire
d’abonnements d’identifier l’abonnement à supprimer.

La requête HTTP DELETE est ainsi formée :

DELETE \[base\]/Subscription/\[id\]

Où \[base\] est l’endpoint FHIR mis à disposition par le gestionnaire
d’abonnements et \[id\] correspond à l’élément id de la ressource à
supprimer.

Si la suppression de l’abonnement est correctement effectuée, le système
Gestionnaire d’abonnements doit retourner un code « 200 deleted ».

En cas d’erreur, le Gestionnaire d’abonnements doit répondre avec les
codes HTTP appropriés tels que définis par l’API REST FHIR et renvoyer
une ressource de type OperationOutcome dans le corps de la réponse.
