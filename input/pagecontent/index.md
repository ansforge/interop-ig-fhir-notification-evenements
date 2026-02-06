<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Brief description of this Implementation Guide</b><br>
This Implementation Guide defines the functional and technical scope for implementing event notification mechanisms within the French CI-SIS interoperability framework.
It covers subscription management, event declaration, and notification order transmission using HL7 FHIR R4 resources and profiles.</p>

{% if site.data.info.releaselabel == 'ci-build' %}
<div style="width: 65%">
    <blockquote class="stu-note">
    <p>Cet Implementation Guide n'est pas la version courante, il s'agit de la version en intégration continue soumise à des changements fréquents uniquement destinée à suivre les travaux en cours. La version courante sera accessible via l'URL canonique suite à la première release : http://interop.esante.gouv.fr/ig/fhir/[code - ig]</p>
    </blockquote>
</div>
{% endif %}

{% if site.data.info.releaselabel == 'public-comment' %}
<div style="width: 65%">
<blockquote class="stu-note">
<p>
  <b>Attention !</b>
  <br>
 Cet Implementation Guide est actuellement en concertation. La version courante est accessible à l'adresse : http://interop.esante.gouv.fr/ig/fhir/ans.fhir.fr.nde
</p>
</blockquote>
</div>
{% endif %}

<div class="figure">
    <img src="ci-sis-logo.png" alt="CI-SIS" title="Logo du CI-SIS" style="width:100%;">
</div>

### Introduction

Ce guide d'implémentation (IG) décrit un mécanisme de notification d’évènements permettant d’informer automatiquement une personne lorsqu’un évènement survient au cours de sa prise en charge.

Il s'agit par exemple, de recevoir une information lorsqu’un document est disponible, lorsqu’une hospitalisation débute ou se termine, ou lorsqu’une information significative est ajoutée à un dossier. Ces notifications peuvent concerner un patient ou un usager, un professionnel de santé, ou toute autre personne autorisée.

Sur le plan technique, cet IG s’inscrit dans le cadre du Cadre d’Interopérabilité des Systèmes d’Information de Santé (CI-SIS) et couvre les domaines sanitaire, médico-administratif, médico-social et social.  
Elle formalise les mécanismes nécessaires à :

- la gestion des abonnements à des types d’évènements,
- la déclaration d’évènements par des systèmes émetteurs,
- la transmission d’ordres de notification vers les abonnés concernés.

### Périmètre du projet

Cet IG définit le périmètre fonctionnel et technique de la mise en œuvre des mécanismes de notification d’évènements dans le cadre du CI-SIS.

Elle couvre la gestion des abonnements aux notifications, la déclaration des évènements et la transmission des ordres de notification, en s’appuyant sur des ressources et profils HL7 FHIR R4.

#### Lectorat cible

Ce document s’adresse aux développeurs des interfaces interopérables des systèmes implémentant le cas d’usage « Notification d’évènements » ou à toute autre personne intervenant dans le processus de mise en place de ces interfaces.

#### Ressources FHIR profilées

Les ressources profilées dans cet IG sont les suivantes : 

{% sql {
  "query" : "
    SELECT 
      json_extract(Json, '$.type') AS Ressource,
      Name,
      Description,
      Web
    FROM Resources
    WHERE Type = 'StructureDefinition'
      AND json_extract(Json, '$.kind') = 'resource'
      AND json_extract(Json, '$.url') LIKE '%NdE%'
    ORDER BY Ressource, Name
  ",
  "columns" : [
    { "title" : "Ressource FHIR", "source" : "Ressource" },
    { "title" : "Profil", "type" : "link", "source" : "Name", "target" : "Web" },
    { "title" : "Description", "type" : "markdown", "source" : "Description" }
  ]
} %}

### Dépendances

{% include dependency-table.xhtml %}

### Propriété intellectuelle

{% include ip-statements.xhtml %}
