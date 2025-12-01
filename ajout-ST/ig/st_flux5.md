# Flux 5:NotificationEvenement - ANS IG Example v0.1.0

* [**Table of Contents**](toc.md)
* [**Specifications Techniques**](specifications_techniques.md)
* **Flux 5:NotificationEvenement**

## Flux 5:NotificationEvenement

### Correspondances entre objets métier et ressources du standard HL7 FHIR

Dans cette section, une mise en correspondance est faite entre les objets identifiés à l’issue de l’étude métier de la notification d’évènements [1] et les ressources et éléments du standard HL7 FHIR.

Les sections qui suivent détaillent la mise en correspondance des informations métier [1] contenues dans les flux de la Table 2 avec les éléments des ressources[^4] FHIR correspondantes. Pour les attributs qui ne sont pas définis dans les ressources FHIR, des extensions (marquées par « **extension** ») sont définies.

Le **Flux 5 – NotificationEvenement** dépend du média diffusion de la notification. Il met en œuvre soit des standards classiques basés sur de l’information textuelle qu’il n’est pas nécessaire de profiler (ex. sms, mail), soit des syntaxes spécifiques à l’application utilisée (ex. pop-up dans une application). Il est considéré comme hors périmètre de ces spécifications d’interopérabilité. Pour un acteur destinataire de notification de type applicatif souhaitant un flux standardisé, la structuration du Flux-4 peut être reprise directement.

