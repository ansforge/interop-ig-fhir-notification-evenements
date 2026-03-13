# Normes et Standards - Notification d'Événements v3.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Autres Ressources**](autres_ressources.md)
* **Normes et Standards**

## Normes et Standards

### Introduction

Étude du 10/2016, avec dernière mise à jour en 08/2021; les conclusions de cette étude reflètent l’état de l’art disponible à cette date.

Ce document présente les normes, standards et profils de normes et standards qui ont été identifiés comme adaptés pour la mise en œuvre des flux structurés présentés dans le document [Étude métier – Notification d’évènements](specifications_fonctionnelles.md) :

* La ressource Subscription de FHIR (Fast Healthcare Interoperability Ressources);
* Le standard WS Notification d’OASIS (Advancing open standards for the information society);

Après un rappel synthétique du contexte en section 2, pour chaque norme, standard et profil analysé sont présentés :

* l’organisme producteur et son périmètre;
* la norme, le standard ou le profil, son périmètre, les technologies sous-jacentes, l’organisation de la documentation, le processus d’élaboration et la gouvernance, la maturité et adoption ainsi que l’outillage mis à disposition des développeurs en particulier l’outillage de test;

Des tableaux de synthèses qui reprennent ces éléments afin d’en faciliter la comparaison sont fournis en section 5.

### Présentation synthétique de la notification d’évènements

Cette étude s’insère dans le cadre de la mise en œuvre d’un mécanisme de notification d’évènements dans le domaine sanitaire, médico-administratif, médico-social ou social. Ce mécanisme permet à une personne (que ce soit un professionnel (Un professionnel est une personne participant, dans le cadre de son activité professionnelle, à la prise en charge d’usagers), une personne prise en charge(Une personne prise en charge peut être un usager dans le secteur social ou un patient) ou une personne tierce(Une personne tierce peut être, par exemple, un membre de la famille qui s’occupe quotidiennement de la personne prise en charge)) ou à une entité géographique de recevoir des notifications d’évènements.

Une [étude « métier »](specifications_fonctionnelles.md) a été menée concernant la modélisation des flux entre composants d’un système d’information ou entre systèmes d’informations dans le cadre de la mise en œuvre du mécanisme de notification d’évènements. Dans ce contexte, une personne peut choisir d’utiliser son téléphone portable ou sa tablette pour recevoir des notifications, alors qu’une structure hospitalière peut choisir de mettre en œuvre un serveur, par exemple, pour l’émission et la réception de notifications d’évènements.

Dans le cadre de la gestion de la notification, le flux d’envoi de la notification à l’utilisateur final dépend du médium de diffusion choisi pour les notifications. Il est mis en œuvre par des composants spécifique au médium de diffusion de notification choisi. Il est donc considéré hors périmètre du besoin pour cette étude qui correspond aux flux d’abonnement à notification, de déclaration d’événement et d’ordre de notification.

### HL7

#### Organisme Producteur

##### Présentation

[HL7](http://www.hl7.org/) (**Health Level Seven**) est un organisme à but non lucratif accrédité par l’ANSI (**American National Standards Institute**) et impliqué dans le développement de standards d’interopérabilité internationaux pour l’informatique de santé. Il regroupe des experts de l’informatique de santé qui collaborent pour créer un cadre et des standards connexes pour l’échange, l’intégration, le partage et l’accès à des données de santé. Il vise à promouvoir l’utilisation de ces standards entre les organisations de santé et au sein d’une même organisation.

Il est possible de devenir membre de l’organisation HL7 selon divers types d’adhésion adaptés aux besoins des organisations ou des individus. Le coût annuel dépend du type d’adhésion.

Les spécifications produites par HL7 sont librement utilisables sans nécessité d’adhésion à HL7.

##### Périmètre HL7

L’organisme HL7 élabore des standards qui concernent spécifiquement le contexte sanitaire ou clinique.

#### Le standard - FHIR

##### Présentation

[FHIR](https://www.hl7.org/fhir/) (**Fast Healthcare Interoperability Resources**) est un standard élaboré par HL7 qui décrit un ensemble de formats de données et d’éléments (appelés ressources) ainsi qu’une API (**Application Programming Interface**) pour l’échange des informations de santé.

La ressource FHIR [**Subscription**](https://www.hl7.org/fhir/subscription.html) concernée par cette étude est utilisée pour définir un abonnement de notifications « push » d’un serveur vers un autre système. Le mécanisme fonctionne comme suit : une fois qu’un abonnement est enregistré sur le serveur, ce dernier vérifie chaque ressource créée ou mise à jour. Si la ressource correspond aux critères enregistrés par l’abonné, le serveur envoie un message sur le «canal» défini pour que l’abonné prenne une action appropriée. Elle ne couvre cependant pas nativement l’ensemble des données des flux identifiées dans [l’étude métier](specifications_fonctionnelles.md).

##### Périmètre FHIR

FHIR est un standard générique qui a vocation à couvrir l’ensemble des flux des systèmes d’information de santé. L’objectif est de proposer des ressources qui possèdent un large éventail d'utilisation qui va des plans de soins et des rapports de diagnostic à l'infrastructure technique tel que l’entête des messages. Ces ressources partagent des caractéristiques techniques communes mais peuvent être utilisées d’une manière totalement différente.

##### Normes et standards sous-jacents

FHIR est conçu pour une utilisation sur internet et peut être mis en œuvre via XML ou JSON, HTTP, le format [Atom](https://validator.w3.org/feed/docs/atom.html) et le standard d’autorisation [OAuth](https://oauth.net/). Les ressources FHIR peuvent être réutilisées d’une façon interopérable (indépendamment de l’infrastructure technique des systèmes d’information les implémentant). Lorsqu’elles sont mises en œuvre en JSON, les ressources FHIR peuvent être utilisées nativement dans des plateformes ayant des ressources logicielles et matérielles limitées (téléphones portables ou tablettes) afin de concevoir des applications mobiles et de permettre des communications avec des systèmes sur le Cloud.

##### Organisation de la documentation

Les spécifications des ressources FHIR (dont la ressource **Subscription**) sont accessibles directement sur internet (y compris aux non-membres) et entièrement documentées en HTML pour permettre une navigation facile entre les sections. Elles sont divisées en trois grandes parties:

* La documentation générale qui présente la façon dont les ressources sont définies. Cette partie présente des informations telles les types de données, les codes utilisés et les formats XML et JSON.
* L’implémentation qui contient des informations sur la mise en œuvre des ressources selon l’architecture [REST](https://fr.wikipedia.org/wiki/Representational_state_transfer), ainsi que les types de messages et de documents qui peuvent être mis en œuvre avec les ressources FHIR.
* Les ressources et qui contiennent les définitions détaillées des ressources FHIR.

##### Maturité et adoption

FHIR a mis en œuvre un [modèle de maturité de ressources](http://wiki.hl7.org/index.php?title=FHIR_Maturity_Model) basé sur le [CMM](http://www.selectbs.com/process-maturity/what-is-the-capability-maturity-model) (**Capability Maturity Model**) afin de fournir aux développeurs une idée de la maturité d’une ressource avant son utilisation et son implémentation. Ci-dessous les 5 niveaux de maturité utilisés par FHIR :

* Niveau 0 : Cette version est comparable à un « draft » ou une version de travail et n’est pas encore prête pour une implémentation.
* Niveau 1 : la ressource ne produit aucun avertissement au cours du processus de « build » (qui peut faire référence aux étapes de la production comme la compilation, le packaging, la distribution, la génération de documentation, le déploiement, etc.). De plus, le groupe de travail dédié estime qu’elle est complète et prête pour une implémentation.
* Niveau 2 : la ressource est testée et échangée avec succès entre au moins trois systèmes développés indépendamment dans un environnement de test comme un [Connectathon](http://wiki.hl7.org/index.php?title=FHIR_Connectathon_12) et dont les résultats ont été reportés au groupe de gestion FHIR.
* Niveau 3 : le respect par la ressource des [normes de qualité](http://wiki.hl7.org/index.php?title=DSTU_2_QA_guidelines) adoptées par FHIR a été vérifié. De plus, la ressource a fait l'objet d'un « ballot » avec au moins 10 commentaires de développeurs en provenance d'au moins 3 organisations et qui ont donné lieu à au moins une évolution de fond.
* Niveau 4 : la ressource est testée dans son champ d'application et publiée officiellement, par exemple dans un STU((**Standard for Trial Use**) signifie que le standard a été testé et implémenté dans des environnements de tests mais qui peut toujours subir des évolutions afin d’atteindre un statut normatif) et mise en œuvre dans plusieurs projets de prototypes. De plus, le groupe de travail estime que la ressource est suffisamment stable pour exiger une consultation des développeurs avant toute modification sans compatibilité ascendante.
* Niveau 5 : la ressource a été publiée en tant que ressource de niveau de maturité 1 ou supérieur au cours d’au moins deux cycles (en tant que STU) formels de publication. Elle a par ailleurs été mise en œuvre dans au moins 5 systèmes de production indépendants dans plus d’un pays.

Le niveau de maturité de la ressource **Subscription** est de 1.

### OASIS

#### Organisme Producteur

##### Présentation

OASIS est un consortium à but non lucratif qui promeut le développement, la convergence et l'adoption de normes et de standards ouverts afin de réduire les coûts et protéger le droit du libre choix de la technologie.

Les membres OASIS représentent le marché public et privé et comptent plus de 5000 participants de plus de 600 organisations dans plus de 65 pays. Toute organisation, société ou individu peut être un membre OASIS et peut définir la nature de son adhésion selon ses besoins. Le coût annuel dépend du type d’adhésion.

Les standards produits sont accessibles sur internet et disponibles en [PDF](https://fr.wikipedia.org/wiki/Portable_Document_Format), Word et dans un format HTML.

Les spécifications produites par OASIS sont librement utilisables sansnécessité d’adhésion à HL7.

##### Périmètre OASIS

Le périmètre couvert par les standards OASIS est très large et varié. OASIS produit des normes et standards mondiaux dans plusieurs domaines dont la sécurité, l’Internet des objets, le Cloud computing, l’énergie, les technologies de gestion de contenu, etc.

#### OASIS WS Notification

##### Présentation

[OASIS WS-notification](https://www.oasis-open.org/committees/tc_home.php?wg_abbrev=wsn) est une famille de spécifications qui se basent sur des services Web pour mettre en œuvre un mécanisme de notification. Ceci inclut :

* les échanges de messages standardisés par des fournisseurs de services,
* les échanges de messages standardisés pour mettre en œuvre un mécanisme de Broker (« proxy ») permettant la publication de messages en provenance d’entités qui ne sont pas nécessairement des fournisseurs de services,
* les exigences opérationnelles attendues des fournisseurs et demandeurs de services qui participent aux notifications,
* un modèle XML qui décrit les sujets d’intérêts pour abonnement à notification.

Les standards WS Notification fournissent un moyen standardisé pourqu’un Web service interagisse avec un ou plusieurs autres Web services sans connaissance préalable de ces derniers.

Cette famille de standards contient les spécifications suivantes :

* WS-BaseNotification pour standardiser les terminologies, les concepts, les opérations ainsi que les fichiers WSDL et XML.
* WS-BrokeredNotification pour standardiser les échanges de messages mettant en œuvre un MessageBroker ou un « proxy » entre l’entité responsable de la publication des messages et celle responsable des abonnements.
* WS-Topics utilisés conjointement avec WS-BaseNotification pour définir des dialectes qui peuvent être utilisés dans les flux mis en œuvre.

##### Périmètre WS Notification

Le périmètre couvert par le standard WS Notification concerne les systèmes qui se basent sur des services web pour mettre en œuvre l’abonnement à notification, la déclaration d’événements et l’ordre de notification. Il ne couvre cependant pas nativement l’ensemble des données des flux identifiées dans [l’étude métier](specifications_fonctionnelles.md).

##### Normes et standards sous-jacents

L’infrastructure de base des standards OASIS est le langage XML.

En ce qui concerne le standard WS notification, il est principalement basé sur langage XML et des standards établis tels [SOAP](https://www.w3.org/TR/soap/) et WSDL pour la mise en œuvre, l’accès et la définition de services web. Ces standards ne sont pas adaptés aux dispositifs mobiles.

##### Organisation de la documentation

La documentation des standards d’OASIS se présente comme suit : les spécifications de chaque standard sont contenues dans un document publié en PDF, HTML et Word. Elles peuvent également être publiées dans plusieurs documents si elles traitent des aspects différents du même standard.

En ce qui concerne le standard WS Notification, les spécifications se composent en trois documents qui contiennent les spécifications [WS-BaseNotification v1.3](http://docs.oasis-open.org/wsn/wsn-ws_base_notification-1.3-spec-os.htm), [WS-BrokeredNotification v1.3](http://docs.oasis-open.org/wsn/wsn-ws_brokered_notification-1.3-spec-os.htm) et [WS-Topics v1.3](http://docs.oasis-open.org/wsn/wsn-ws_topics-1.3-spec-os.htm). Ces documents sont accessibles publiquement et gratuitement sur internet.

##### Processus d’élaboration et gouvernance

Les standards OASIS (dont WS Notification) passent par les phases suivantes avant d’être publiés :

* Un « Draft » (version de travail) d’une spécification : la création d’une première version de travail se fait selon un vote du comité technique et qui doit avoir la majorité des votes.
* Un «Draft » prêt pour une concertation publique (qui peut durer 60 jours) : il s’agit d’une période obligatoire pour que les spécifications passent d’une version de travail « Draft » à une version plus stable.
* Une spécification sur la base des retours de la phase de concertation publique (soumis à un vote des membres OASIS - chaque membre OASIS a le droit à un vote),
* Un standard OASIS candidat : qui est soumis à une autre phase de concertation publique puis à un Ballot des membres OASIS,
* Un standard OASIS,
* “Errata” (une liste d’erreurs remontée) approuvé : le comité technique peut approuver une liste d’erreurs identifiées et qui ne concerne pas des modifications de fond. Cette liste doit être mise à disposition avec le standard OASIS.

De plus, il existe deux façons afin de maintenir et de faire évoluer les standards OASIS :

* **Processus d’Errata** : utilisé pour les modifications mineures - le comité technique peut adopter une liste de modification à un standard existant ou en cours d’élaboration, à condition que la majorité du comité technique vote pour l’adoption de ces modifications.
* **Activités de maintenance** : il s’agit d’une procédure initiée dans le cas où des changements majeurs doivent être apportés à un standard OASIS dans sa version finale (avant sa publication).

##### Maturité et adoption

La famille de spécifications OASIS WS Notification a été publiée en 2006 comme des standards OASIS. Elle a depuis été largement adoptée pour mettre en œuvre des systèmes de notifications basés sur XML qui peuvent s’interfacer avec d’autres systèmes d’informations basés sur d’autres standards. Ces spécifications ont des niveaux de maturité, de qualité et de stabilité élevés.

##### Outillage

Il existe quelques initiatives pour la mise en place des outils de tests de conformité pour les standards OASIS :

* **XML 1.0 Second Edition Conformance Test Suite (2001)** qui fournit un ensemble de tests pour déterminer la conformité des standards OASIS aux recommandations XML 1.0 de l’organisation [W3C](https://www.w3.org/).
* **DOM Level 1 Conformance Test Suite (2001)** qui est un ensemble d’outils développés par le [NIST](https://www.nist.gov/) et soumis à OASIS. Il fournit un ensemble standardisé d’objets pour représenter les documents HTML et XML, un modèle qui concernent la façon dont ces objets peuvent être combinés ainsi qu’une interface pour les manipuler.
* **XML Test Suite (1999)** qui est un ensemble de métriques développé par OASIS et NIST pour déterminer la conformité des standards OASIS aux recommandations XML 1.0 de W3C.

Ces outils peuvent être utilisés pour la mise en œuvre du standard WS Notification, qui est également fourni avec des schémas XML et WSDL afin de faciliter aux utilisateurs l’implémentation et le test des standards à adopter.

### Synthèse

Cette section présente une synthèse comparative des normes, standards et profils analysés dans les sections précédentes. Les items de cette synthèse sont inspirés des documents suivants :

* La [doctrine du CI-SIS](https://esante.gouv.fr/interoperabilite/ci-sis/demarche-elaboration).
* « [Evaluating HIT Standards](http://www.himss.org/evaluating-hit-standards?ItemNumber=22775) » document sur la comparaison des standards publié par l’organisation [HIMSS](http://www.himss.org/).
* La méthode [CAMSS](http://ec.europa.eu/isa/ready-to-use-solutions/camss_en.htm) (Common Assessment Method for Standards and Specifications), soutenue par le programme de la commission européenne concernant les solutions d’interopérabilité pour les administrations publiques. Cette initiative vise à promouvoir la collaboration entre les états membres de l’union européenne dans la définition d’une méthode d’évaluation commune de standards pour le développement des services administratifs en ligne.

#### Synthèse comparative des standards

| | | |
| :--- | :--- | :--- |
| Outillage**Des outils de tests sont mis en œuvre pour valider l’adhérence au standard.** | ✔ | ✔ |
| Tests**Des tests sont effectués sur des versions de travail (dites STU – Standards for Trial Use) et/ou pour les guides d’implémentation normatifs.** | Non encore testé (maturité 1) | ✔ |
| Processus de prise en compte des améliorations | ✔ | ✔ |
| Existence de guides d’implémentation (Un guide d’implémentation combine un ou plusieurs standards afin de traiter des cas d’usage particuliers)** Les guides référencent les standards de base, c’est-à-dire des standards traitant des cas d’usage génériques et abstraits, avec au moins un cas d’usage et une optionalité sur les paramètres pour permettre les extensions. ** | ✔ | ✔ |
| Adapté aux dispositifs mobiles | ✔ |  |
| Stabilité de la documentation |  | ✔ |
| Adoption par le marché et utilisation (**L’adoption peut être démontrée par des exemples opérationnels d’implémentations conformes provenant de différents fournisseurs.**) |  | ✔ |
| Neutralité* **les spécifications ne limitent pas la concurrence et l’innovation ;**
* **les spécifications sont basées sur des développements scientifiques et technologiques de pointe.**
 |  | ✔ |
| Qualité* **la qualité est suffisante pour permettre le développement de produits et de services interopérables concurrents.**
 |  | ✔ |
| Accessibilité**Les spécifications sont disponibles au public à des conditions raisonnables (gratuitement ou à coût raisonnable).** | ✔ | ✔ |
| Couverture des spécifications (notification d’évènements) | **partielle** | **partielle** |
| Mises en œuvre existantes du cas d’usage (notification d’évènements) |  | ✔ |

#### Synthèse comparative des organismes producteurs

| | | |
| :--- | :--- | :--- |
| Maintenance**Assurer la continuité et la mise à jour du standard** | ✔ | ✔ |
| Ouverture et transparence**Utiliser un processus de développement ouvert et consensuel :*** **les informations concernant les discussions techniques et la prise de décision sont archivées et identifiées.**
* **les informations sur les activités de normalisation sont largement annoncées par les moyens appropriés.**
 | ✔ | ✔ |
| Large participation* **assurer une participation équilibrée des développeurs et des fournisseurs de logiciels**
* **assurer que les données appropriées sont incluses et partagées**
* **assurer une participation des institutions professionnelles (cliniques, administratives, etc.)**
 | ✔ | ✔ |
| Propriété intellectuelle**Les standards sont utilisables avec une licence raisonnable et non discriminatoire.** | ✔ | ✔ |
| Organisme à but non lucratif | ✔ | ✔ |

#### Analyse

La ressource FHIR Subscription et le standard WS notification sont tous les deux élaborés par des organismes qui assurent leur évolution, développement et adoption. Ils présentent des caractéristiques discriminantes opposées :

* le standard WS notification est un standard stable et installé sur une technologie qui n’est pas adapté aux terminaux mobiles actuels ;
* la ressource FHIR Subscription peut être mise en œuvre via une technologie adaptée aux terminaux mobiles actuels ; elle n’est cependant pas stabilisée et pourrait subir des changements conséquents sur les prochaines années.

En ce qui concerne leurs applicabilités dans le contexte de la notification d’évènements, il est à noter que les informations « métiers » identifiées dans [l’étude](specifications_fonctionnelles.md) ne sont que partiellement couvertes par les deux standards étudiés dans ce document et qu’une mise en œuvre du cas d’usage nécessiterait des extensions quel que soit le standard utilisé.

