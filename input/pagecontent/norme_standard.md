### Introduction

Ce document présente les normes, standards et profils de normes et
standards qui ont été identifiés comme adaptés pour la mise en œuvre des
flux structurés présentés dans le document « Étude métier – Notification
d’évènements » \[1\] :

- La ressource Subscription de FHIR (Fast Healthcare Interoperability
  Ressources);

- Le standard WS Notification d’OASIS (Advancing open standards for the
  information society);

Après un rappel synthétique du contexte en section 2, pour chaque norme,
standard et profil analysé sont présentés :

- l’organisme producteur et son périmètre;

- la norme, le standard ou le profil, son périmètre, les technologies
  sous-jacentes, l’organisation de la documentation, le processus
  d’élaboration et la gouvernance, la maturité et adoption ainsi que
  l’outillage mis à disposition des développeurs en particulier
  l’outillage de test;

Des tableaux de synthèses qui reprennent ces éléments afin d’en
faciliter la comparaison sont fournis en section 5.

**<u>Note éditoriale :</u>**

Afin de préserver la fluidité de lecture, les références sont gérées de
la manière suivante dans le document :

- les références aux documents de référence listés en annexe 2 sont
  indiquées par le numéro du document entre crochets – \[1\] fait donc
  référence au premier document de la liste de l’annexe 2 ;

- les références aux sites web permettant d’approfondir les aspects
  techniques référencés sont directement intégrés sous forme de liens
  cliquables dans des notes de bas de page.

### Présentation synthétique de la notification d’évènements

Cette étude s’insère dans le cadre de la mise en œuvre d’un mécanisme de
notification d’évènements dans le domaine sanitaire,
médico-administratif, médico-social ou social. Ce mécanisme permet à une
personne (que ce soit un professionnel[^1], une personne prise en
charge[^2] ou une personne tierce[^3]) ou à une entité géographique de
recevoir des notifications d’évènements.

Une étude[^4] « métier » a été menée concernant la modélisation des flux
entre composants d’un système d’information ou entre systèmes
d’informations dans le cadre de la mise en œuvre du mécanisme de
notification d’évènements. Dans ce contexte, une personne peut choisir
d’utiliser son téléphone portable ou sa tablette pour recevoir des
notifications, alors qu’une structure hospitalière peut choisir de
mettre en œuvre un serveur, par exemple, pour l’émission et la réception
de notifications d’évènements.

Dans le cadre de la gestion de la notification, le flux d’envoi de la
notification à l’utilisateur final dépend du médium de diffusion choisi
pour les notifications. Il est mis en œuvre par des composants
spécifique au médium de diffusion de notification choisi. Il est donc
considéré hors périmètre du besoin pour cette étude qui correspond aux
flux d’abonnement à notification, de déclaration d’événement et d’ordre
de notification.

### HL7

#### Organisme Producteur

##### Présentation

HL7[^5] (*Health Level Seven*) est un organisme à but non lucratif
accrédité par l’ANSI (*American National Standards Institute*) et
impliqué dans le développement de standards d’interopérabilité
internationaux pour l’informatique de santé. Il regroupe des experts de
l’informatique de santé qui collaborent pour créer un cadre et des
standards connexes pour l’échange, l’intégration, le partage et l’accès
à des données de santé. Il vise à promouvoir l’utilisation de ces
standards entre les organisations de santé et au sein d’une même
organisation.

Il est possible de devenir membre de l’organisation HL7 selon divers
types d’adhésion adaptés aux besoins des organisations ou des individus.
Le coût annuel dépend du type d’adhésion.

Les spécifications produites par HL7 sont librement utilisables sans
nécessité d’adhésion à HL7.

##### Périmètre HL7

L’organisme HL7 élabore des standards qui concernent spécifiquement le
contexte sanitaire ou clinique.

#### Le standard - FHIR

##### Présentation

FHIR[^6] (*Fast Healthcare Interoperability Resources*) est un standard
élaboré par HL7 qui décrit un ensemble de formats de données et
d’éléments (appelés ressources) ainsi qu’une API (*Application
Programming Interface*) pour l’échange des informations de santé.

La ressource FHIR **Subscription**[^7] concernée par cette étude est
utilisée pour définir un abonnement de notifications « push » d’un
serveur vers un autre système. Le mécanisme fonctionne comme suit : une
fois qu’un abonnement est enregistré sur le serveur, ce dernier vérifie
chaque ressource créée ou mise à jour. Si la ressource correspond aux
critères enregistrés par l’abonné, le serveur envoie un message sur le
«canal» défini pour que l’abonné prenne une action appropriée. Elle ne
couvre cependant pas nativement l’ensemble des données des flux
identifiées dans l’étude métier \[1\].

##### Périmètre FHIR

FHIR est un standard générique qui a vocation à couvrir l’ensemble des
flux des systèmes d’information de santé. L’objectif est de proposer des
ressources qui possèdent un large éventail d'utilisation qui va des
plans de soins et des rapports de diagnostic à l'infrastructure
technique tel que l’entête des messages. Ces ressources partagent des
caractéristiques techniques communes mais peuvent être utilisées d’une
manière totalement différente.

##### Normes et standards sous-jacents

FHIR est conçu pour une utilisation sur internet et peut être mis en
œuvre via XML ou JSON, HTTP, le format Atom[^8] et le standard
d’autorisation OAuth[^9]. Les ressources FHIR peuvent être réutilisées
d’une façon interopérable (indépendamment de l’infrastructure technique
des systèmes d’information les implémentant). Lorsqu’elles sont mises en
œuvre en JSON, les ressources FHIR peuvent être utilisées nativement
dans des plateformes ayant des ressources logicielles et matérielles
limitées (téléphones portables ou tablettes) afin de concevoir des
applications mobiles et de permettre des communications avec des
systèmes sur le Cloud.

##### Organisation de la documentation

Les spécifications des ressources FHIR (dont la ressource
**Subscription**) sont accessibles directement sur internet (y compris
aux non-membres) et entièrement documentées en HTML pour permettre une
navigation facile entre les sections. Elles sont divisées en trois
grandes parties:

- La documentation générale qui présente la façon dont les ressources
  sont définies. Cette partie présente des informations telles les types
  de données, les codes utilisés et les formats XML et JSON.

- L’implémentation qui contient des informations sur la mise en œuvre
  des ressources selon l’architecture REST[^10], ainsi que les types de
  messages et de documents qui peuvent être mis en œuvre avec les
  ressources FHIR.

- Les ressources et qui contiennent les définitions détaillées des
  ressources FHIR.

##### Processus d’élaboration et gouvernance

La méthodologie[^11] d’élaboration des ressources FHIR (dont la
ressource **Subscription**) se base sur trois composants principaux :

- Le méta modèle qui se base sur une ressource « Profile » et qui
  définit la structure des ressources FHIR, les éléments de données et
  leurs significations, les contraintes à respecter, etc. Ce méta modèle
  est maintenu via une procédure de Ballot ou de vote.

- La partie technique qui concerne des aspects comme la création des
  ressources et la manière dont l’outillage est utilisé pour créer du
  contenu. Cette partie se trouve dans le document FHIR Guide to
  Authoring Resources[^12].

- La partie contenu qui couvre les aspects « qualité » et fournit des
  lignes directrices et des meilleures pratiques pour la création et le
  maintien des ressources. Cette partie se trouve dans le document FHIR
  Guide to Designing Resources[^13] et FHIR Design Patterns[^14].

- Afin de maintenir et faire évoluer les ressources, la gouvernance de
  FHIR est alignée avec les exigences de la gouvernance[^15] des autres
  normes produites par HL7. Elle est gérée par trois groupes:

- FHIR Governance Board[^16] qui établit les principes guidant le
  développement des spécifications, les ressources FHIR, etc.

- FHIR Management Group (FMG)[^17] qui maintient et gère les ressources
  FHIR. Ceci inclut les propositions d’évolution (Change Requests), les
  procédures de gestion des Ballots, la relation avec les groupes de
  travail HL7, la gestion des Connectathons (évènements de tests), etc.
  Les demandes d’évolutions des Ballots sont évaluées selon divers
  critères :

  - Est-ce que l’évolution demandée bénéficie aux développeurs et
    comment ?

  - Est-ce que l’évolution est alignée avec le méta-modèle FHIR ?

  - Est-ce que l’évolution a un impact métier ?

  - Est-ce que c’est complexe d’intégrer l’évolution souhaitée dans les
    outils ?

- Modeling and Methodology[^18] qui gère les règles des bonnes pratiques
  qui gouvernent la création des ressources.

FHIR utilise l’outil gForge[^19] pour la traçabilité des demandes[^20]
d’évolutions des spécifications.

##### Maturité et adoption

FHIR a mis en œuvre un modèle[^21] de maturité de ressources basé sur le
CMM[^22] (*Capability Maturity Model*) afin de fournir aux développeurs
une idée de la maturité d’une ressource avant son utilisation et son
implémentation. Ci-dessous les 5 niveaux de maturité utilisés par FHIR :

- Niveau 0 : Cette version est comparable à un « draft » ou une version
  de travail et n’est pas encore prête pour une implémentation.

- Niveau 1 : la ressource ne produit aucun avertissement au cours du
  processus de « build » (qui peut faire référence aux étapes de la
  production comme la compilation, le packaging, la distribution, la
  génération de documentation, le déploiement, etc.). De plus, le groupe
  de travail dédié estime qu’elle est complète et prête pour une
  implémentation.

- Niveau 2 : la ressource est testée et échangée avec succès entre au
  moins trois systèmes développés indépendamment dans un environnement
  de test comme un Connectathon[^23] et dont les résultats ont été
  reportés au groupe de gestion FHIR.

- Niveau 3 : le respect par la ressource des normes de qualité[^24]
  adoptées par FHIR a été vérifié. De plus, la ressource a fait l'objet
  d'un « ballot » avec au moins 10 commentaires de développeurs en
  provenance d'au moins 3 organisations et qui ont donné lieu à au moins
  une évolution de fond.

- Niveau 4 : la ressource est testée dans son champ d'application et
  publiée officiellement, par exemple dans un STU[^25] et mis en œuvre
  dans plusieurs projets de prototypes. De plus, le groupe de travail
  estime que la ressource est suffisamment stable pour exiger une
  consultation des développeurs avant toute modification sans
  compatibilité ascendante.

- Niveau 5 : la ressource a été publiée en tant que ressource de niveau
  de maturité 1 ou supérieur au cours d’au moins deux cycles[^26]
  formels de publication. Elle a par ailleurs été mise en œuvre dans au
  moins 5 systèmes de production indépendants dans plus d’un pays.

Le niveau de maturité de la ressource **Subscription** est de 1.

##### Outillage

Des outils sont élaborés pour implémenter et tester des systèmes basés
sur le standard FHIR, dont :

- FHIR Notepad++[^27]

- Value Set Editor[^28]

- Des serveurs[^29] publiquement accessibles à des fins de tests

- Java Validator[^30] ainsi qu’un ensemble[^31] d’outils de validation
  des ressources FHIR

- HAPI[^32], une librairie de développement des ressources FHIR en Java

- Des schémas[^33] XSD de validation et de génération[^34] de code

- D’autres outils sont également disponibles pour mettre en œuvre et
  tester des ressources FHIR comme XmlSpy[^35], Oxygen[^36], etc.

L’ensemble de ces outils peuvent être utilisés pour la ressource
**Subscription**.

### OASIS

#### Organisme Producteur

##### Présentation

OASIS est un consortium à but non lucratif qui promeut le développement,
la convergence et l'adoption de normes et de standards ouverts afin de
réduire les coûts et protéger le droit du libre choix de la technologie.

Les membres OASIS représentent le marché public et privé et comptent
plus de 5000 participants de plus de 600 organisations dans plus de 65
pays. Toute organisation, société ou individu peut être un membre OASIS
et peut définir la nature de son adhésion selon ses besoins. Le coût
annuel dépend du type d’adhésion.

Les standards produits sont accessibles sur internet et disponibles
en [PDF](https://fr.wikipedia.org/wiki/Portable_Document_Format), Word
et dans un format HTML.

Les spécifications produites par OASIS sont librement utilisables sans
nécessité d’adhésion à HL7.

##### Périmètre OASIS

Le périmètre couvert par les standards OASIS est très large et varié.
OASIS produit des normes et standards mondiaux dans plusieurs domaines
dont la sécurité, l’Internet des objets, le Cloud computing, l’énergie,
les technologies de gestion de contenu, etc.

#### OASIS WS Notification

##### Présentation

OASIS WS-notification[^37] est une famille de spécifications qui se
basent sur des services Web pour mettre en œuvre un mécanisme de
notification. Ceci inclut :

- les échanges de messages standardisés par des fournisseurs de
  services,

- les échanges de messages standardisés pour mettre en œuvre un
  mécanisme de Broker (« proxy ») permettant la publication de messages
  en provenance d’entités qui ne sont pas nécessairement des
  fournisseurs de services,

- les exigences opérationnelles attendues des fournisseurs et demandeurs
  de services qui participent aux notifications,

- un modèle XML qui décrit les sujets d’intérêts pour abonnement à
  notification.

Les standards WS Notification fournissent un moyen standardisé pour
qu’un Web service interagisse avec un ou plusieurs autres Web services
sans connaissance préalable de ces derniers.

Cette famille de standards contient les spécifications suivantes :

- WS-BaseNotification pour standardiser les terminologies, les concepts,
  les opérations ainsi que les fichiers WSDL et XML.

- WS-BrokeredNotification pour standardiser les échanges de messages
  mettant en œuvre un MessageBroker ou un « proxy » entre l’entité
  responsable de la publication des messages et celle responsable des
  abonnements.

- WS-Topics utilisés conjointement avec WS-BaseNotification pour définir
  des dialectes qui peuvent être utilisés dans les flux mis en œuvre.

##### Périmètre WS Notification

Le périmètre couvert par le standard WS Notification concerne les
systèmes qui se basent sur des services web pour mettre en œuvre
l’abonnement à notification, la déclaration d’événements et l’ordre de
notification. Il ne couvre cependant pas nativement l’ensemble des
données des flux identifiées dans l’étude métier \[1\].

##### Normes et standards sous-jacents

L’infrastructure de base des standards OASIS est le langage XML.

En ce qui concerne le standard WS notification, il est principalement
basé sur langage XML et des standards établis tels SOAP[^38] et WSDL
pour la mise en œuvre, l’accès et la définition de services web. Ces
standards ne sont pas adaptés aux dispositifs mobiles.

##### Organisation de la documentation

La documentation des standards d’OASIS se présente comme suit : les
spécifications de chaque standard sont contenues dans un document publié
en PDF, HTML et Word. Elles peuvent également être publiées dans
plusieurs documents si elles traitent des aspects différents du même
standard.

En ce qui concerne le standard WS Notification, les spécifications se
composent en trois documents qui contient les spécifications
[WS-BaseNotification
v1.3](http://docs.oasis-open.org/wsn/wsn-ws_base_notification-1.3-spec-os.htm)[^39],
[WS-BrokeredNotification
v1.3](http://docs.oasis-open.org/wsn/wsn-ws_brokered_notification-1.3-spec-os.htm)[^40]
et WS-[Topics
v1.3](http://docs.oasis-open.org/wsn/wsn-ws_topics-1.3-spec-os.htm)[^41].
Ces documents sont accessibles publiquement et gratuitement sur
internet.

##### Processus d’élaboration et gouvernance

Les standards OASIS (dont WS Notification) passent par les phases
suivantes avant d’être publiés :

- Un « Draft » (version de travail) d’une spécification : la création
  d’une première version de travail se fait selon un vote du comité
  technique et qui doit avoir la majorité des votes.

- Un «Draft » prêt pour une concertation publique (qui peut durer 60
  jours) : il s’agit d’une période obligatoire pour que les
  spécifications passent d’une version de travail « Draft » à une
  version plus stable.

- Une spécification sur la base des retours de la phase de concertation
  publique (soumis à un vote des membres OASIS - chaque membre OASIS a
  le droit à un vote),

- Un standard OASIS candidat : qui est soumis à une autre phase de
  concertation publique puis à un Ballot des membres OASIS,

- Un standard OASIS,

- “Errata” (une liste d’erreurs remontée) approuvé : le comité technique
  peut approuver une liste d’erreurs identifiées et qui ne concerne pas
  des modifications de fond. Cette liste doit être mise à disposition
  avec le standard OASIS.

De plus, il existe deux façons afin de maintenir et de faire évoluer les
standards OASIS :

- **Processus d’Errata** : utilisé pour les modifications mineures - le
  comité technique peut adopter une liste de modification à un standard
  existant ou en cours d’élaboration, à condition que la majorité du
  comité technique vote pour l’adoption de ces modifications.

- **Activités de maintenance** : il s’agit d’une procédure initiée dans
  le cas où des changements majeurs doivent être apportés à un standard
  OASIS dans sa version finale (avant sa publication).

##### Maturité et adoption

La famille de spécifications OASIS WS Notification a été publiée en 2006
comme des standards OASIS. Elle a depuis été largement adoptée pour
mettre en œuvre des systèmes de notifications basés sur XML qui peuvent
s’interfacer avec d’autres systèmes d’informations basés sur d’autres
standards. Ces spécifications ont des niveaux de maturité, de qualité et
de stabilité élevés.

##### Outillage

Il existe quelques initiatives pour la mise en place des outils de tests
de conformité pour les standards OASIS :

- **XML 1.0 Second Edition Conformance Test Suite (2001)** qui fournit
  un ensemble de tests pour déterminer la conformité des standards OASIS
  aux recommandations XML 1.0 de l’organisation W3C[^42].

- **DOM Level 1 Conformance Test Suite (2001)** qui est un ensemble
  d’outils développés par le NIST[^43] et soumis à OASIS. Il fournit un
  ensemble standardisé d’objets pour représenter les documents HTML et
  XML, un modèle qui concernent la façon dont ces objets peuvent être
  combinés ainsi qu’une interface pour les manipuler.

- **XML Test Suite (1999)** qui est un ensemble de métriques développé
  par OASIS et NIST pour déterminer la conformité des standards OASIS
  aux recommandations XML 1.0 de W3C.

Ces outils peuvent être utilisés pour la mise en œuvre du standard WS
Notification, qui est également fourni avec des schémas XML et WSDL afin
de faciliter aux utilisateurs l’implémentation et le test des standards
à adopter.

### Synthèse

Cette section présent une synthèse comparative des normes, standards et
profils analysés dans les sections précédentes. Les items de cette
synthèse sont inspirés des documents suivants :

- La doctrine du CI-SIS \[2\].

- « Evaluating HIT Standards[^44] » document sur la comparaison des
  standards publié par l’organisation HIMSS[^45].

- La méthode CAMSS[^46], soutenue par le programme de la commission
  européenne concernant les solutions d’interopérabilité pour les
  administrations publiques. Cette initiative vise à promouvoir la
  collaboration entre les états membres de l’union européenne dans la
  définition d’une méthode d’évaluation commune de standards pour le
  développement des services administratifs en ligne.

#### Synthèse comparative des standards

<table style="width:92%;">
<colgroup>
<col style="width: 49%" />
<col style="width: 23%" />
<col style="width: 2%" />
<col style="width: 15%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;">Critères d’évaluation des standards</th>
<th style="text-align: center;">FHIR Subscription</th>
<th style="text-align: center;"></th>
<th style="text-align: center;">OASIS WS Notification</th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Outillage</p>
<p><em>Des outils de tests sont mis en œuvre pour valider l’adhérence au
standard.</em></p></td>
<td style="text-align: center;">✔</td>
<td style="text-align: center;"></td>
<td style="text-align: center;">✔</td>
</tr>
<tr>
<td><p>Tests</p>
<p><em>Des tests sont effectués sur des versions de travail (dites STU
-Standards for Trial Use) et/ou pour les guides d’implémentation
normatifs.</em></p></td>
<td style="text-align: center;">Non encore testé (maturité 1)</td>
<td style="text-align: center;"></td>
<td style="text-align: center;">✔</td>
</tr>
<tr>
<td>Processus de prise en compte des améliorations</td>
<td style="text-align: center;">✔</td>
<td style="text-align: center;"></td>
<td style="text-align: center;">✔</td>
</tr>
<tr>
<td><p>Existence de guides d’implémentation<a href="#fn1"
class="footnote-ref" id="fnref1" role="doc-noteref"><sup>1</sup></a></p>
<p><em>Les guides référencent les standards de base</em><a href="#fn2"
class="footnote-ref" id="fnref2" role="doc-noteref"><sup>2</sup></a>
<em>avec au moins un cas d’usage et une optionalité sur les paramètres
pour permettre les extensions.</em></p></td>
<td style="text-align: center;">✔</td>
<td style="text-align: center;"></td>
<td style="text-align: center;">✔</td>
</tr>
<tr>
<td>Adapté aux dispositifs mobiles</td>
<td style="text-align: center;">✔</td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
</tr>
<tr>
<td>Stabilité de la documentation</td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
<td style="text-align: center;">✔</td>
</tr>
<tr>
<td>Adoption par le marché<a href="#fn3" class="footnote-ref"
id="fnref3" role="doc-noteref"><sup>3</sup></a> et utilisation</td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
<td style="text-align: center;">✔</td>
</tr>
<tr>
<td><p>Neutralité</p>
<ul>
<li><p><em>les spécifications ne limitent pas la concurrence et
l’innovation;</em></p></li>
<li><p><em>les spécifications sont basées sur des développements
scientifiques et technologiques de pointe.</em></p></li>
</ul></td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
<td style="text-align: center;">✔</td>
</tr>
<tr>
<td><p>Qualité</p>
<ul>
<li><p><em>la qualité est suffisante pour permettre le développement de
produits et de services interopérables concurrents.</em></p></li>
</ul></td>
<td style="text-align: center;"></td>
<td colspan="2" style="text-align: center;">✔</td>
</tr>
<tr>
<td><p>Accessibilité</p>
<p><em>Les spécifications sont disponibles au public à des conditions
raisonnables (y compris pour un prix raisonnable ou
gratuitement).</em></p></td>
<td style="text-align: center;">✔</td>
<td style="text-align: center;"></td>
<td style="text-align: center;">✔</td>
</tr>
<tr>
<td><p>Couverture des spécifications</p>
<p>(notification d’évènements)</p></td>
<td style="text-align: center;"><strong>partielle</strong></td>
<td style="text-align: center;"></td>
<td style="text-align: center;"><strong>partielle</strong></td>
</tr>
<tr>
<td>Mise en œuvre existantes du cas d’usage (notification
d’évènements)</td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
<td style="text-align: center;">✔</td>
</tr>
</tbody>
</table>
<section id="footnotes" class="footnotes footnotes-end-of-document"
role="doc-endnotes">
<hr />
<ol>
<li id="fn1"><p>Un guide d’implémentation combine un ou plusieurs
standards afin de traiter des cas d’usage particuliers<a href="#fnref1"
class="footnote-back" role="doc-backlink">↩︎</a></p></li>
<li id="fn2"><p>Un standard de base traite des cas d’usage relativement
génériques et diversifiés et qui restent à un niveau abstrait (et donc
ne traitent pas des cas pointus dans un domaine spécifique)<a
href="#fnref2" class="footnote-back" role="doc-backlink">↩︎</a></p></li>
<li id="fn3"><p>L'adoption par le marché peut être démontrée par des
exemples opérationnels d'implémentations conformes provenant de
différents fournisseurs<a href="#fnref3" class="footnote-back"
role="doc-backlink">↩︎</a></p></li>
</ol>
</section>

#### Synthèse comparative des organismes producteurs

<table style="width:92%;">
<colgroup>
<col style="width: 51%" />
<col style="width: 25%" />
<col style="width: 15%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;">Critères d’évaluations des organismes
producteurs</th>
<th style="text-align: center;">FHIR HL7</th>
<th style="text-align: center;">OASIS</th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Maintenance</p>
<p><em>Assurer la continuité et la mise à jour du standard</em></p></td>
<td style="text-align: center;">✔</td>
<td style="text-align: center;">✔</td>
</tr>
<tr>
<td><p>Ouverture et transparence</p>
<p><em>Utiliser un processus de développement ouvert et
consensuel :</em></p>
<ul>
<li><p><em>les informations concernant les discussions techniques et la
prise de décision sont archivées et identifiées.</em></p></li>
<li><p><em>les informations sur les activités de normalisation sont
largement annoncées par les moyens appropriés.</em></p></li>
</ul></td>
<td style="text-align: center;">✔</td>
<td style="text-align: center;">✔</td>
</tr>
<tr>
<td><p>Large participation</p>
<ul>
<li><p><em>assurer une participation équilibrée des développeurs et des
fournisseurs de logiciels</em></p></li>
<li><p><em>assurer que les données appropriées sont incluses et
partagées</em></p></li>
<li><p><em>assurer une participation des institutions professionnelles
(cliniques, administratives, etc.)</em></p></li>
</ul></td>
<td style="text-align: center;">✔</td>
<td style="text-align: center;">✔</td>
</tr>
<tr>
<td><p>Propriété intellectuelle</p>
<p><em>Les standards sont utilisables avec une licence raisonnable et
non discriminatoire.</em></p></td>
<td style="text-align: center;">✔</td>
<td style="text-align: center;">✔</td>
</tr>
<tr>
<td>Organisme à but non lucratif</td>
<td style="text-align: center;">✔</td>
<td style="text-align: center;">✔</td>
</tr>
</tbody>
</table>

#### Analyse

La ressource FHIR Subscription et le standard WS notification sont tous
les deux élaborés par des organismes qui assurent leur évolution,
développement et adoption. Ils présentent des caractéristiques
discriminantes opposées :

- le standard WS notification est un standard stable et installé sur une
  technologie qui n’est pas adapté aux terminaux mobiles actuels ;

- la ressource FHIR Subscription peut être mise en œuvre via une
  technologie adaptée aux terminaux mobiles actuels ; elle n’est
  cependant pas stabilisée et pourrait subir des changements conséquents
  sur les prochaines années.

En ce qui concerne leurs applicabilités dans le contexte de la
notification d’évènements, il est à noter que les informations
« métiers » identifiées dans l’étude \[1\] ne sont que partiellement
couvertes par les deux standards étudiés dans ce document et qu’une mise
en œuvre du cas d’usage nécessiterait des extensions quel que soit le
standard utilisé.

### ANNEXE

#### Annexe 1 : Glossaire

| Sigle / Acronyme | Signification |
|----|----|
| ASIP Santé | Agence des Systèmes d’Information Partagés de Santé (ancienne dénomination de l’ANS) |
| MHD | *Mobile Health Documents* |
| HL7 | *Health Level 7* |
| IHE | *Integrating the Healthcare Entreprise* |
| FHIR | *Fast Healthcare Interoperability Ressources* |
| CI-SIS | Cadre d’interopérabilité des systèmes d’information de santé |

#### Annexe 2 : Documents de référence

<table style="width:87%;">
<colgroup>
<col style="width: 87%" />
</colgroup>
<thead>
<tr>
<th>Documents de référence</th>
</tr>
</thead>
<tbody>
<tr>
<td><ol type="1">
<li><p>Etude métier – Notification d’évènements
(https://esante.gouv.fr/volet-notification-devenements)</p></li>
<li><p>Doctrine du CI-SIS
(https://esante.gouv.fr/interoperabilite/ci-sis/demarche-elaboration)</p></li>
</ol></td>
</tr>
</tbody>
</table>

#### Annexe 3 : Historique du document

<table style="width:87%;">
<colgroup>
<col style="width: 27%" />
<col style="width: 59%" />
</colgroup>
<thead>
<tr>
<th colspan="2">Identification du document</th>
</tr>
</thead>
<tbody>
<tr>
<td>Référence</td>
<td>CI_SIS_STANDARDS_NOTIFICATION_EVENEMENTS_V1.0.DOCX</td>
</tr>
<tr>
<td>Date de création</td>
<td>01/09/2016</td>
</tr>
<tr>
<td>Date de dernière mise à jour</td>
<td>10/08/2021</td>
</tr>
<tr>
<td>Rédaction (R)</td>
<td>ANS</td>
</tr>
<tr>
<td>Version</td>
<td></td>
</tr>
<tr>
<td>Nombre de pages</td>
<td>17</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 10%" />
<col style="width: 15%" />
<col style="width: 14%" />
<col style="width: 15%" />
<col style="width: 14%" />
<col style="width: 14%" />
<col style="width: 14%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;">Version</th>
<th colspan="2">Rédigé par</th>
<th colspan="2">Vérifié par</th>
<th colspan="2">Validé par</th>
</tr>
</thead>
<tbody>
<tr>
<td rowspan="2" style="text-align: center;">0.1</td>
<td>ASIP SANTÉ</td>
<td>12/10/2016</td>
<td>ASIP SANTÉ</td>
<td>12/10/2016</td>
<td>ASIP SANTÉ</td>
<td>12/10/2016</td>
</tr>
<tr>
<td colspan="6">Motif et nature de la modification : Diffusion du
document pour concertation publique</td>
</tr>
<tr>
<td rowspan="2" style="text-align: center;">1.0</td>
<td>ASIP SANTÉ</td>
<td>26/04/2018</td>
<td>ASIP SANTÉ</td>
<td>26/04/2018</td>
<td>ASIP SANTÉ</td>
<td>26/04/2018</td>
</tr>
<tr>
<td colspan="6">Motif et nature de la modification : Diffusion du
document pour publication finale</td>
</tr>
<tr>
<td rowspan="2" style="text-align: center;">1.1</td>
<td>ANS</td>
<td>10/08/2021</td>
<td>ANS</td>
<td>10/08/2021</td>
<td>ANS</td>
<td>10/08/2021</td>
</tr>
<tr>
<td colspan="6">Motif et nature de la modification : Passage à la charte
graphique ANS et mise à jour du nom ASIP</td>
</tr>
</tbody>
</table>

[^1]: Un professionnel est une personne participant, dans le cadre de
    son activité professionnelle, à la prise en charge d’usagers.

[^2]: Une personne prise en charge peut être un usager dans le secteur
    social ou un patient.

[^3]: Une personne tierce peut être, par exemple, un membre de la
    famille qui s’occupe quotidiennement de la personne prise en charge.

[^4]: Cette étude ne fait pas l’objet de ce document. Elle fait partie
    du document « Etude métier – Notification d’évènements » \[1\].

[^5]: http://www.hl7.org/

[^6]: https://www.hl7.org/fhir/

[^7]: https://www.hl7.org/fhir/subscription.html

[^8]: https://validator.w3.org/feed/docs/atom.html

[^9]: <https://oauth.net/>

[^10]: https://fr.wikipedia.org/wiki/Representational_state_transfer

[^11]: http://wiki.hl7.org/index.php?title=FHIR_Methodology_Process#Methodology_Locations

[^12]: http://wiki.hl7.org/index.php?title=FHIR_Guide_to_Authoring_Resources

[^13]: http://wiki.hl7.org/index.php?title=FHIR_Guide_to_Designing_Resources

[^14]: http://wiki.hl7.org/index.php?title=FHIR_Design_Patterns

[^15]: http://wiki.hl7.org/index.php?title=FHIR_Governance_Process

[^16]: http://wiki.hl7.org/index.php?title=FHIR_Governance_Board

[^17]: http://wiki.hl7.org/index.php?title=FHIR_Management_Group

[^18]: http://wiki.hl7.org/index.php?title=Modeling_and_Methodology

[^19]: Gforge.org

[^20]: http://wiki.hl7.org/index.php?title=FHIR_Change_requests

[^21]: http://wiki.hl7.org/index.php?title=FHIR_Maturity_Model

[^22]: http://www.selectbs.com/process-maturity/what-is-the-capability-maturity-model

[^23]: http://wiki.hl7.org/index.php?title=FHIR_Connectathon_12

[^24]: http://wiki.hl7.org/index.php?title=DSTU_2_QA_guidelines

[^25]: STU (*Standard for Trial Use*) signifie que le standard a été
    testé et implémenté dans des environnements de tests mais qui peut
    toujours subir des évolutions afin d’atteindre un statut normatif

[^26]: en tant que STU

[^27]: http://www.healthintersections.com.au/FhirServer/fhirnpp.htm

[^28]: http://www.healthintersections.com.au/FhirServer/fhirvse.htm

[^29]: http://wiki.hl7.org/index.php?title=Publicly_Available_FHIR_Servers_for_testing

[^30]: http://hl7.org/implement/standards/fhir/validator.zip

[^31]: http://hl7.org/implement/standards/fhir/validation.html

[^32]: http://hapifhir.io/index.html

[^33]: http://hl7.org/implement/standards/fhir/fhir-all-xsd.zip

[^34]: http://hl7.org/implement/standards/fhir/fhir-codegen-xsd.zip

[^35]: http://www.altova.com/xmlspy.html

[^36]: http://www.oxygenxml.com/

[^37]:
    > https://www.oasis-open.org/committees/tc_home.php?wg_abbrev=wsn

[^38]: https://www.w3.org/TR/soap/

[^39]: http://docs.oasis-open.org/wsn/wsn-ws_base_notification-1.3-spec-os.htm

[^40]: http://docs.oasis-open.org/wsn/wsn-ws_brokered_notification-1.3-spec-os.htm

[^41]: http://docs.oasis-open.org/wsn/wsn-ws_topics-1.3-spec-os.htm

[^42]: https://www.w3.org/

[^43]: https://www.nist.gov/

[^44]: http://www.himss.org/evaluating-hit-standards?ItemNumber=22775

[^45]: http://www.himss.org/

[^46]: Common Assessment method for standards and specifications :
    http://ec.europa.eu/isa/ready-to-use-solutions/camss_en.htm
