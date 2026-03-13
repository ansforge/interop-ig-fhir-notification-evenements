# Volume 1 - Etude fonctionnelle - Notification d'Événements v3.0.0-ballot

* [**Table of Contents**](toc.md)
* **Volume 1 - Etude fonctionnelle**

## Volume 1 - Etude fonctionnelle

### Exemples de cas d’usage

##### Parcours de soins d’une personne diabétique

**_Pré-conditions :_**

1. Une plateforme de suivi d’une personne prise en charge dédiée à la coordination des soins concentre les paramétrages des droits de notification ainsi que le mécanisme opératoire des notifications.
1. Les professionnels de santé présentés dans ce cas d’usage sont enregistrés sur cette plateforme. Les médecins sont identifiés comme pouvant recevoir des notifications liées aux personnes prises en charge.
1. La personne prise en charge a été confirmé positivement diabétique par un dépistage. Son médecin traitant et un diabétologue lui ont défini son plan personnalisé de soins (PPS). Le plan de soin est stocké dans l’espace réservé à cet effet sur la plateforme de suivi.

**_Scénario nominal :_**

1. La personne prise en charge connait une complication nécessitant une hospitalisation.
1. L’hôpital dans lequel est admise la personne prise en charge envoie cette information à la plateforme de suivi.
1. Le médecin traitant reçoit par conséquent une notification via un canal sécurisé indiquant que la personne prise en charge a été admis à l’hôpital.
1. Le diabétologue reçoit également une notification via un canal sécurisé indiquant que la personne prise en charge a été admise à l’hôpital.

##### Mise à disposition de résultats d’examen de laboratoire

**_Pré-conditions :_**

1. Un patient et son médecin traitant sont inscrits à un service de notification offert par la plateforme de suivi. Le canal de diffusion de notification préférentiel du médecin traitant est par exemple le sms et celui du patient est la messagerie électronique.
1. Le médecin traitant rédige une ordonnance d’examens biologiques pour le patient. Ce dernier se rend au laboratoire muni de sa prescription.
1. Le professionnel de santé du laboratoire effectue les prélèvements indiqués sur l’ordonnance, saisit les données nécessaires dans le SI du laboratoire, met les prélèvements à analyser et recueille les résultats.

**_Scénario nominal :_**

1. Le laboratoire transmet les résultats à la plateforme de suivi.
1. La plateforme de suivi notifie le patient et son médecin traitant de la disponibilité des résultats d’analyse selon le canal préférentiel de chacun.

##### Consultation d’un « pool » de notifications

**_Pré-conditions :_**

1. L’ensemble des notifications émises par la plateforme de suivi sont consultables dans le logiciel métier du professionnel de santé.
1. Une notification non consultée est marquée comme « Non lue ».

**_Scénario nominal :_**

1. Lorsque le professionnel consulte une notification, celle-ci passe en statut « Lue ».
1. La plateforme de suivi est alors automatiquement notifiée de ce changement de statut et se met à jour en conséquence.

**_Scénario alternatif :_**

1. Le professionnel peut forcer le statut de la notification de « Lue » à « Non lue ».
1. La plateforme de suivi est alors automatiquement notifiée de ce changement de statut et se met à jour en conséquence. La plateforme sauvegarde l’historique des changements.

Remarque : le « pool » de notification peut être intégré dans le logiciel métier du professionnel ou dans un outil « externe » qui peut gérer les notifications provenant de sources diverses.

### Etape 1: Organisation du contexte métier

Le but de cette étape est d’organiser la vue métier dans laquelle s’insère le projet et d'identifier le ou les processus du périmètre du projet. Les concepts suivants doivent être définis :

* le domaine d'activité dans lequel se situe le projet; le domaine est composé d'un ou de plusieurs groupes de processus.
* les groupes de processus qui sont composés eux-mêmes d’un ensemble de processus métier.

Le domaine de la notification d'évènements est relatif au traitement et la gestion des notifications d'évènements concernant une personne prise en charge dans le domaine sanitaire, médico-administratif, médico-social et social.

 Organisation du contexte métier 

Cette étude métier couvre les processus suivants :

**La gestion des abonnements**:

* La création ou la mise à jour d’un d’abonnement
* La suppression d’un abonnement

**La gestion des évènements:**

* L’émission d’un événement

**La gestion des notifications:**

* La transmission d’un ordre de notification.

### Etape 2: Définition du processus collaboratif

Le but de cette étape est de définir les processus métier identifiés dans le diagramme défini à l’étape 1. Cette modélisation est entreprise de façon macroscopique en représentant les processus par des diagrammes de cas d’utilisation UML. Les définitions de termes utilisés dans cette étape ainsi que tout au long du document sont listées ci-dessous. A noter que chaque sous-section peut contenir ses définitions propres, notamment celles des flux d'informations identifiés.

- **Personne prise en charge**: Il s’agit de la personne prise en charge que ce soit au niveau sanitaire, médico-administratif, médico-social et social. Cette personne peut être un usager dans le secteur social ou un patient.

- **Évènement**: un événement correspond à un fait significatif lors de la prise en charge d’une personne. Par exemple, un événement peut être la disponibilité d’un nouveau document comme un compte-rendu d’examen de biologie, l’admission d’une personne dans un hôpital ou l’inscription d’une personne dans un programme de suivi de personnes en risque de perte d’autonomie.

- **Abonnement**: un abonnement porte sur les types d'évènements qui intéressent l’abonné et doivent faire l’objet d’une notification. Un abonnement est défini par l’identification de l’abonné, le médium de notification à utiliser, la personne prise en charge associée aux évènements, le type d’événement donnant lieu à notification et la période de validité de l’abonnement.

- **Média de notification**: un média de notification est le moyen de communication par lequel la notification parvient à l’abonné (ex. sms, mail, pop-up dans une application…).

- **Professionnel**: un professionnel est une personne qui participe à la prise en charge d’une personne que ce soit au niveau sanitaire, médico-administratif, médico-social et social.

Les sous-sections suivantes présentent les cas d'utilisation identifiés dans le système ainsi que les acteurs et les actions qui y contenus.

##### [Cas d’utilisation] Gestion des abonnements (CI-SIS-NE-PGA-CU001)

**_Cas d'usage_** : Un souscripteur habilité crée, modifie ou supprime un abonnement aux notifications d’événements sur une plateforme ou un système de gestion dédié à cet effet pour le compte d’une personne physique ou morale.

###### "Diagramme de cas d’utilisation : Création ou mise à jour d’un abonnement (CI-SIS-NE-CU-SA-001)"

Le processus métier de gestion d'abonnement amène à considérer un cas d'utilisation de "Création ou de mise à jour d’un abonnement" avec les différents acteurs impliqués.

 Diagramme de cas d'utilisation : Création ou mise à jour d’un abonnement (CI-SIS-NE-CU-SA-001) 

###### Les acteurs impliqués

| | |
| :--- | :--- |
| Gestionnaire d'abonnements | Le gestionnaire d’abonnements est un acteur système qui administre les abonnements et les paramètres d’usage des notifications d’événements. |
| Souscripteur | Un souscripteur est la personne (physique ou morale) qui est habilitée à créer, modifier ou supprimer un abonnement au service de notification d’événements. Un souscripteur peut être aussi l’abonné lui-même. |

 Table des acteurs impliqués dans le cas d’utilisation Création ou mise à jour d’un abonnement 

* Détails du cas d'utilisation 

Cette section décrit en détail chaque cas d'utilisation de la manière usuelle: description, pré-condition, scénario(s),exception, post-condition, contraintes fonctionnelles, autres contraintes.

Qui:

Gestionnaire d'abonnements, Souscripteur

Description:

Scénario nominal : Le souscripteur crée ou met à jour un abonnement pour un abonné. Cet abonné peut être une personne physique ou morale.

Pré-Conditions:

* Les personnes physiques ou morales impliquées dans la notification d’évènements sont enregistrées via un gestionnaire d’inscriptions et par conséquent connues du système.
* Le paramétrage des média de diffusion est pris en charge par le gestionnaire d’inscriptions.
* L’abonné effectue une demande d’abonnements à notification au souscripteur.

Scénario Alternatif:

L’abonné peut être lui-même habilité à gérer son propre abonnement sans passer par un souscripteur.

###### "Diagramme de cas d'utilisation : Suppression d’un abonnement (CI-SIS-NE-CU-DA-001) "

Le processus métier de gestion d'abonnement amène à considérer un cas d'utilisation de "Suppression d’un abonnement" avec les différents acteurs impliqués.

 Diagramme de cas d'utilisation : Suppression d’un abonnement (CI-SIS-NE-CU-DA-001) 

* Les acteurs impliqués 

[Voir section](#les-acteurs-impliqués)

* Détails du cas d'utilisation 

Cette section décrit en détail chaque cas d'utilisation de la manière usuelle: description, pré-condition, scénario(s), exception, post-condition, contraintes fonctionnelles, autres contraintes.

Qui:

Gestionnaire d'abonnements, Souscripteur

Description:

Le souscripteur supprime un abonnement. Le cas "Suppression d’un abonnement" est distinct du cas d’utilisation "Création ou mise à jour d’un abonnement" parce que les informations métier manipulées sont différentes.

Scenario Alternatif:

L'abonné peut être lui-même habilité à gérer son propre abonnement sans passer par un souscripteur.

#####  [Cas d’utilisation] Gestion des évènements (CI-SIS-NE-PGE-CU001)

**_Cas d'usage_** : Un acteur déclenche l'envoi d'un évènement à une plateforme ou un système de gestion dédié à cet effet.

###### "Diagramme de cas d'utilisation : Emission d'un évènement (CI-SIS-NE-CU-EE-001)"

Le processus métier de gestion d'évènements amène à considérer un cas d'utilisation d’une "Emission d'un évènement" avec les différents acteurs impliqués.

 Diagramme de cas d'utilisation : Emission d'un évènement (CI-SIS-NE-CU-EE-001) 

###### Les acteurs impliqués

| | |
| :--- | :--- |
| Emetteur | L'émetteur est une personne morale ou physique qui envoie un évènement au gestionnaire d'abonnements soit de manière automatique, soit manuellement. L'émetteur est enregistré et connu par le système qui réceptionne et traite les évènements. |
| Gestionnaire d'abonnements | Le gestionnaire d’abonnements joue aussi le rôle de gestionnaire d’évènements. C’est un acteur système qui enregistre tous les événements susceptibles de conduire à des notifications et transmet l’ordre de notification au gestionnaire de notifications. |

 Table des acteurs impliqués dans le cas d’utilisation Emission d’un évènement 

###### Détails du cas d'utilisation

Cette section décrit en détail chaque cas d'utilisation de la manière usuelle: description, pré-condition, scénario(s), exception, post-condition, contraintes fonctionnelles, autres contraintes.

Qui:

Gestionnaire d'abonnements, Emetteur

Description:

L’émission d’un évènement concerne l'envoi d'un évènement par un émetteur. Cet évènement peut donner lieu à la transmission d’un ordre de notification.

Pré-Conditions:

L'émetteur est pré-enregistré via le gestionnaire d’inscriptions.

##### [Cas d’utilisation] Gestion des notifications (CI-SIS-NE-PGN-CU001)

**_Cas d'usage_ :** Une plateforme ou un système de gestion dédié traite l'évènement de manière à pouvoir aviser les abonnés auxquels l'évènement est destiné, cela se traduit par la transmission d'un ordre de notification.

###### "Diagramme de cas d'utilisation: Transmission d'un ordre de notification (CI-SIS-NE-CU-TO-001)"

Le processus métier de gestion d'évènement amène à considérer un cas d'utilisation de "Transmission d'un ordre de notification" avec les différents acteurs impliqués.

 Diagramme de cas d'utilisation : Transmission d'un ordre de notification (CI-SIS-NE-CU-TO-001) 

###### Les acteurs impliqués

| | |
| :--- | :--- |
| Abonné | Un abonné est une personne destinatrice des notifications d'évènements dans le cadre d’un abonnement. Un abonné peut être un professionnel, une structure, la personne prise en charge ou une tierce personne autorisée à recevoir des notifications sur la personne prise en charge. |
| Gestionnaire d'abonnements | Le gestionnaire d’abonnements est un acteur système qui administre les abonnements et les paramètres d’usage des notifications d’événements. Il joue aussi le rôle d’un gestionnaire d’évènements et enregistre tous les événements susceptibles de conduire à des notifications et transmet l’ordre de notification au gestionnaire de notifications. |
| Gestionnaire de notifications | Le gestionnaire de notifications est un acteur système qui envoie les notifications aux abonnés concernés en fonction des informations recueillies depuis les gestionnaires d’abonnements. |

 Table des acteurs impliqués dans le cas d’utilisation Transmission d’un ordre de notification 

###### Les détails du cas d'utilisation

Cette section décrit en détail chaque cas d'utilisation de la manière usuelle: description, pré-condition, scénario(s), exception, post-condition, contraintes fonctionnelles, autres contraintes.

Qui:

Gestionnaire de notifications, Gestionnaire d'abonnements, Abonné

**Description:**

Scénario nominal générique : Un événement enregistré déclenche automatiquement l’envoi d’une notification à un ou plusieurs abonné(s) dans la mesure où leur abonnement est configuré pour recevoir ce type d’événement :

- L'émetteur transmet l’évènement via le gestionnaire d’abonnements.

- Le gestionnaire d’abonnements traite l'évènement et identifie les destinataires de la notification en fonction des abonnements en sa possession.

- Le gestionnaire d’abonnements transmet un ordre de notification au gestionnaire de notifications.

- L'abonné ou les abonnés sont prévenus de l’événement via le gestionnaire de notifications.

_Exemple de cas d’usage_ : En tenant compte des pré-conditions du cas d'usage présenté ci-dessous, le scénario décrit le cas d'une sortie d’hôpital d’une personne prise en charge.

- Un hôpital (émetteur) transmet au gestionnaire d’abonnements un nouvel évènement concernant la sortie d’hôpital du patient X.

- Le gestionnaire d’abonnements traite l'évènement et identifie le professionnel abonné à la notification d’évènements du patient X.

- Le gestionnaire d’abonnements transmet un ordre de notification au gestionnaire de notifications.

- Le professionnel abonné est prévenu de la sortie d’hôpital du patient X via le gestionnaire de notifications.

**Pré-Conditions:**

Ces pré-conditions sont spécifiques à l’exemple de cas d’usage présenté ci-dessous et servent d'illustration :

* L’abonné est enregistré via le gestionnaire d’inscriptions.
* Le professionnel, l’hôpital et la personne prise en charge sont enregistrés et la préférence de média de notification est paramétrée via le gestionnaire d’inscriptions.

**_Contraintes « métier»:_**

Les 4 types d’évènements pris en compte à ce jour sont :

1. Flux du dépôt de document
1. Flux d'admission dans un établissement de santé
1. Flux de sortie d'un établissement de santé
1. Flux de création d'une note pour un patient dans le cahier de liaison

### Etape 3 : Description du processus collaboratif et identification des flux

L’objectif de cette étape est de décrire les processus métier collaboratifs définis dans les cas d'utilisation de l’étape 2, ainsi que les flux échangés par les acteurs. Dans ce document, les processus sont modélisés avec des diagrammes d'activités UML.

##### [Activité] Gestion des abonnements (CI-SIS-NE-PGA-DA001)

Cette section présente la modélisation du processus de la création ou de mise à jour d’un abonnement. Elle contient également une description des acteurs, des actions correspondantes et les flux d’échanges.

###### Diagramme d’activité : Création ou mise à jour d’un abonnement (CI-SIS-NE-DA-SA-001)

Le processus métier de gestion d'abonnement implique le flux d’échange de demande de création ou de mises à jour "SouscriptionAbonnement".

 Diagramme d'activité : Création ou mise à jour d’un abonnement (CI-SIS-NE-DA-SA-001) 

**Acteurs**

| | |
| :--- | :--- |
| Souscripteur | Un souscripteur est la personne (physique ou morale) qui est habilitée à créer, modifier ou supprimer un abonnement au service de notification d’événements. Un souscripteur peut être aussi l’abonné lui-même. |
| Gestionnaire d'abonnements | Le gestionnaire d’abonnements est un acteur système qui stocke les abonnements et les paramètres d’usage des notifications d’événements. |

 Liste des acteurs 

**Actions**

Initier une demande de création ou de mise à jour d'un abonnement

Le souscripteur transmet au gestionnaire d’abonnements les caractéristiques de l’abonnement (abonné, média de notification, type d’événement à notifier, etc.). Cette action peut également concerner une demande de mise à jour d’un d’abonnement.

Créer ou mettre à jour l'abonnement

Le gestionnaire d’abonnements traite la demande du souscripteur.

###### Diagramme d’activité : Suppression d’un abonnement (CI-SIS-NE-DA-DA-001)

Le processus métier de gestion d'abonnement implique le flux d’échange de demande de création ou de mise à jour : "SuppressionAbonnement".

 Diagramme d'activité : Suppression d'un abonnement (CI-SIS-NE-DA-DA-001) 

**Acteurs**

| | |
| :--- | :--- |
| Souscripteur | Un souscripteur est la personne (physique ou morale) qui est habilitée à créer, modifier ou supprimer un abonnement au service de notification d’événements. Un souscripteur peut être aussi l’abonné lui-même. |
| Gestionnaire d'abonnements | Le gestionnaire d’abonnements est un acteur système qui administre les abonnements et les paramètres d’usage des notifications d’événements. |

 Liste des acteurs 

**Actions**

Initier une demande de suppression d'abonnement

Le souscripteur transmet au gestionnaire d’abonnements les caractéristiques de l’abonnement à supprimer.

Supprimer un abonnement

Le gestionnaire d’abonnements traite la demande de suppression du souscripteur.

##### [Activité] Gestion des évènements (CI-SIS-NE-PGE-DA001)

Cette section présente la modélisation du processus de l'émission d'un évènement. Elle contient également une description des acteurs, des actions correspondantes et les flux d’échanges.

###### Diagramme d'activité : Emission d'un évènement (CI-SIS-NE-DA-EE-001)

Le processus métier de gestion d'évènement implique le flux d’échange entre l'émetteur et la plateforme ou le système de gestion : "EmissionEvenement".

 Diagramme d'activité : Emission d'un évènement (CI-SIS-NE-DA-EE-001) 

**Acteurs**

| | |
| :--- | :--- |
| Emetteur | L'émetteur est une personne morale ou physique qui envoie un évènement au gestionnaire d’abonnements soit de manière automatique, soit manuellement. L'Emetteur est enregistré et donc connu par le système qui réceptionne et traite les évènements. |
| Gestionnaire d’abonnements | Le gestionnaire d’abonnements joue aussi le rôle de gestionnaire d’événements. C’est un acteur système qui enregistre l’ensemble des événements susceptibles de conduire à des notifications et transmet l’ordre de notification au gestionnaire de notifications. |

 Liste des acteurs 

**Actions**

Emettre un évènement

L'émission est déclenchée suite à une action.
 Les actions sont de type admission ou sortie d'un établissement de santé, dépôt de document, rédaction d'une lettre de liaison, etc.
 Les émissions sont donc les vecteurs de l'envoi de l'évènement.

Traiter l'évènement

L'évènement est traité par une plateforme ou un système de gestion qui analyse, qualifie et vérifie si cet évènement est lié à des abonnements.

##### [Activité] Gestion des notifications (CI-SIS-NE-PGN-DA001)

Cette section présente la modélisation du processus de la transmission de l'ordre de notification d'un évènement. Elle contient également une description des acteurs, des actions correspondantes et les flux d’échanges.

###### Diagramme d'activité : Transmission d'un ordre de notification (CI-SIS-NE-DA-TO-001)

Le processus métier de gestion de notification implique le flux d’échange : "TransmissionOrdreNotification".

 Diagramme d'activité : Transmission d'un ordre de notification (CI-SIS-NE-DA-TO-001) 

**Acteurs**

| | |
| :--- | :--- |
| Gestionnaire d’abonnements | Le gestionnaire d’abonnements joue aussi le rôle de gestionnaire d’évènements. C’est un acteur système qui enregistre l’ensemble des événements susceptibles de conduire à des notifications et transmet l’ordre de notification au gestionnaire de notifications. |
| Gestionnaire de notifications | Le gestionnaire de notifications est un acteur système qui envoie les notifications aux abonnés concernés en fonction des informations recueillies depuis les gestionnaires d’abonnements et d’événements. |
| Abonné | Un abonné est une personne destinatrice des notifications d'évènements dans le cadre d’un abonnement. Un abonné peut être un professionnel, une structure, la personne prise en charge ou une tierce personne autorisée à recevoir des notifications concernant la personne prise en charge. |

 Liste des acteurs 

**Actions**

Traiter l'évènement

La plateforme ou le système dédié prend en compte l'évènement liée à une action réalisée et l'analyse.
 Les actions sont de type admission ou sortie d'un établissement de santé, dépôt de document, création d’une note dans le cahier de liaison, etc.
 La plateforme ou le système dédié vérifie si le contexte de cet évènement (l'action opérée et la personne prise en charge) concerne des abonnés destinataires.
 Si des abonnés sont identifiés, un ordre de notification de l'évènement est transmis. Les abonnés sont forcément habilités à recevoir les notifications.

Transmettre un ordre de notification

La plateforme ou le système dédié prend en compte l'ordre de notification d'évènement et traite l'envoi.

Réceptionner la notification

L'abonné est en mesure de réceptionner la notification via son propre système.

### Etape 4: Qualification des flux échangés

Les flux échangés entre les acteurs ont été identifiés à l'étape 3. Cette nouvelle étape vise à qualifier les flux d'informations en définissant parmi eux ceux qui sont structurés. Cette qualification est effectuée en élaborant un tableau répertoriant les flux identifiés à l'étape précédente et présenté ci-dessous.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Flux1 | SouscriptionAbonnement | Souscripteur | Gestionnaire d’abonnements | **Flux structuré** |
| Flux2 | SuppressionAbonnement | Souscripteur | Gestionnaire d’abonnements | **Flux structuré** |
| Flux3 | EmissionEvenement | Emetteur | Gestionnaire d’abonnements | **Flux structuré** |
| Flux4 | TransmissionOrdreNotification | Gestionnaire d’abonnements | Gestionnaire denotifications | **Flux structuré** |
| Flux5 | NotificationEvenement | Gestionnaire denotifications | Abonné | **Flux structuré** |

 Liste des flux identifiés 

### Etape 5: Identification des informations véhiculées dans les flux

Dans cette section, il s'agit de définir les informations « métier » présentes dans chaque flux structuré identifié. La Table ci-dessous liste les concepts présents dans les flux identifiés.

| | |
| :--- | :--- |
| Emetteur | L ‘émetteur est la personne (physique ou morale) qui informe le gestionnaire d’abonnements d’un événement concernant une personne prise en charge. |
| Abonné | C’est une personne destinatrice des notifications dans le cadre d’un abonnement. Un abonné peut être un professionnel, une structure ou une tierce personne autorisée à recevoir des notifications sur la prise en charge d’une personne. |
| Abonnement | Un abonnement porte sur les types d'évènements qui intéressent l’abonné et doivent faire l’objet d’une notification. |
| Evènement | Un événement correspond à un fait significatif lors de la prise en charge d’une personne. |
| PersonnePriseEnCharge | C’est une personne prise en charge que ce soit au niveau sanitaire, médico-administratif, médico-social et social. |
| AbonnéPP | Il s’agit d’une personne physique (un professionnel, une personne prise en charge, une personne tierce, etc.) qui possède un abonnement et qui est susceptible de recevoir des notifications concernant des évènements auxquels elle est inscrite. |
| AbonnéPM | Il s’agit d’une personne morale qui possède un abonnement et qui est susceptible de recevoir des notifications concernant des évènements auxquels elle est inscrite. |

 Liste des concepts «  métier » identifiés 

### Etape 6: Élaboration du modèle hiérarchique des flux structurés

Le but de cette étape est d'élaborer des diagrammes de classe (modèle hiérarchique) de chaque flux structuré à partir des informations métier identifiées. La représentation formalisée du flux doit prendre en compte deux exigences supplémentaires:

• Harmonisation du modèle avec d'autres flux: il faut réutiliser les classes génériques et mutualisées, mises à disposition dans le modèle des objets de santé (MOS);

• Hiérarchie: le modèle doit adopter une structure hiérarchique au plus proche du besoin métier.

La Table ci-dessous liste les objets « métier » identifiés et leurs correspondances avec les classes du MOS (Version 1.5).

| | | |
| :--- | :--- | :--- |
| **Professionnel** | PersonnePhysique,Professionnel | Oui |
| **Abonné** | PersonnePhysique,Professionnel,Patient,EntitéJuridique | Oui |
| **Emetteur** | PersonnePhysique,Professionnel,EntitéJuridique | Oui |
| **EntitéJuridique** | EntitéJuridique | Oui |
| **PersonnePriseEnCharge** | PersonnePhysiquePatient | Oui |
| **Abonnement** | - | - |
| **Evènement** | Evènement | Oui |
| **AbonnéPP** | PersonnePhysique | Oui |
| **AbonnéPM** | - | - |

 Liste des correspondances entre les concepts « métier » identifiés et les concepts du MOS 

A noter que les objets identifiés qui ne se trouvent pas dans le MOS vont faire l’objet d’une demande d’évolution du MOS ou rester spécifique au projet.

Les sections qui suivent présentent les diagrammes de classes de chaque flux structuré identifié. Il est à noter que les flux **TransmissionOrdreNotification** et **NotificationEvenement** sont modélisés avec le même diagramme de classe, étant donné que ces flux peuvent contenir les mêmes informations métier.

##### Flux 1 – SouscriptionAbonnement

Ci-dessous le diagramme de classe concernant le Flux 1-SouscriptionAbonnement. Cette section contient également la description des attributs dans chaque classe identifiée.

 Diagramme de classe – SouscriptionAbonnement 

###### Classe "Abonnement"

| | | |
| :--- | :--- | :--- |
| idAbonnement : [0..1] Identifiant | Identifiant de l’abonnement. | Non (L’identifiant de l’abonnement est une information obligatoire. Par contre, cette information ne circule pas dans le flux d’échange qui concerne la création d’un abonnement et peut être automatiquement générée par le gestionnaire d’abonnements) |
| mediaDiffusion : [1..1] Code | Média de diffusion de la notification (sms, mail, etc.). | Oui |
| validiteDebut : [1..1] DateHeure | Date de début de l’abonnement. | Oui |
| validiteFin : [1..1] DateHeure | Date de fin de l’abonnement. | Oui |
| dateDemande : [0..1] DateHeure | Date de la demande de création, modification ou suppression de l’abonnement. | Non |

 Attributs de la classe "Abonnement" 

###### Classe "Abonne"

| | | |
| :--- | :--- | :--- |
| idAbonne : [1..1] Identifiant | Identifiant unique de l’abonné. | Oui |

 Attributs de la classe "Abonné" 

###### Classe "PersonnePhysique"

| | | |
| :--- | :--- | :--- |
| nomFamille : [0..1] Texte | Toute personne possède un nom de famille (appelé auparavant nom patronymique). Ce nom figure sur l'acte de naissance. Il peut s'agir par exemple du nom du père.Ref.: Service-public.frSynonymes : nom patronymique, nom de naissance. | Non |
| prenomUsuel: [0..1] Texte | Le prénom usuel est un des prénoms inscrit dans l'acte de naissance. | Non |

 Attributs de la classe "PersonnePhysique" 

###### Classe "Evenement"

| | | |
| :--- | :--- | :--- |
| typeEvenement : [1..1] Code | Type de l’évènement (dépôt de document, sortie d’hôpital, etc.). | Oui |

 Attributs de la classe "Evènement" 

###### Classe "PersonnePriseEnCharge"

| | | |
| :--- | :--- | :--- |
| idPersonnePriseEnCharge : [0..1] Identifiant | Identifiant(s) de la personne prise en charge (identifiants de santé, identifiants locaux, etc.). | Non (Si la personne prise en charge est un patient, ce champ contiendra l’identifiant du patient) |
| adresse : [0..*] Adresse | Adresse(s) de correspondance permettant de contacter la personne prise en charge :- lorsque les structures ne sont pas identifiées : cas des remplaçants ou des professionnels venant de s’inscrire mais non encore installés;- hors de leurs lieux d’exercice, s’ils le souhaitent.Remarque : La première occurrence correspond aux coordonnées de correspondance du RPPS. | Non |
| telecommunication : [0..*] Telecommunication | Adresse(s) de télécommunication de la personne prise en charge (numéro de téléphone, adresse email, URL, etc.). | Non |

 Attributs de la classe "PersonnePriseEnCharge" 

###### Classe "Professionnel"

| | | |
| :--- | :--- | :--- |
| idPP : [0..1] Identifiant | Identifiant national de la personne physique:** Pour les professionnels: N° RPPS ou ADELI** Pour les acteurs non professionnels de santé employés d’une structure : l’identifiant est composé de l’identifiant principal de la structure et de l’identifiant interne attribué par la structure** Pour les étudiants, l'identifiant est le numéro SIRIUS ou le numéro Etudiant (identifiant ordinal dont les règles de génération sont propres à chaque ordre). | Non |
| telecommunication : [0..*] Telecommunication | Adresse(s) de télécommunication du professionnel (numéro de téléphone, adresse email, URL, etc.). | Non |
| adresse : [0..*] Adresse | Adresse(s) de correspondance du professionnel. | Non |

 Attributs de la classe "Professionnel" 

###### Classe "AbonnePP"

| | | |
| :--- | :--- | :--- |
| **identifiantAbonnePP : [0..1] Identifiant** | Identifiant de la physique (i.e. il peut s’agir du NIR pour la personne prise en charge). | Non |
| **typeAbonnePP : [0..1] Code** | Type de la personne physique abonnée (professionnel, personne prise en charge, patient, personne tierce, etc.). | Non |
| **addresse : [0..*] Addresse** | Point(s) de contact de la personne physique abonnée. | Non |
| **telecommunication: [1..*] telecommunication** | Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.). | Oui |

 Attributs de la classe "AbonnePP" 

###### Classe "AbonnePM"

| | | |
| :--- | :--- | :--- |
| **identifiantAbonnePM : [0..1] Identifiant** | Identifiant de la personne morale. | Non |
| **typeAbonnePM : [0..1] Code** | Type de la personne morale abonnée. | Non |
| **addresse : [0..*] Addresse** | Point(s) de contact de la personne morale abonnée. | Non |
| **telecommunication: [1..*] telecommunication** | Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.). | Oui |
| **nom : [0..1] Texte** | Nom sous lequel la personne morale exerce son activité. | Non |

 Attributs de la classe "AbonnePM" 

###### Classe "EntiteJuridique"

| | | |
| :--- | :--- | :--- |
| numFINESS : [0..1] Identifiant | Identifiant FINESS de l'entité juridique attribué lors de sa création.Les personnes morales identifiées par des numéros FINESS sont également dotées de numéros SIREN. Le numéro FINESS étant porteur intrinsèquement de liens avec le domaine sanitaire ou le domaine médico-social, il est, s'il existe, à privilégier pour l’identification de ces personnes morales en tant qu’acteurs sanitaires et médico-sociaux (Référentiel d’identification des acteurs sanitaires et médico-sociaux - Politique Générale de Sécurité des Systèmes d’Information de Santé(PGSSI-S)). | Non (L’attribut idEmetteur de la classe Emetteur peut être la même valeur du numéro FINESS de l’entité juridique) |
| addresseEJ : [0..*] Texte Addresse | Point(s) de contact. | Non |
| telecommunication [0..*] telecommunication | Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.). | Non |
| raisonSociale : [0..1] Texte | Nom de l’entité juridique. | Non |

 Attributs de la classe "EntiteJuridique" 

###### Classe "Emetteur"

| | | |
| :--- | :--- | :--- |
| idEmetteur : [1..1] Identifiant | Identifiant(s) de l’émetteur de l’évènement. | Oui |

 Attributs de la classe "Emetteur" 

##### Flux 2 – SuppressionAbonnement

Ci-dessous le diagramme de classe concernant le Flux 2-SuppressionAbonnement. Les sous-sections suivantes donnent des définitions aux attributs de chaque class identifiée.

 Diagramme de classe – SuppressionAbonnement 

###### Classe "SuppressionAbonnement"

| | | |
| :--- | :--- | :--- |
| idAbonnement : [1..1] Identifiant | Identifiant unique de l’abonnement. | Oui |

 Attributs de la classe "SuppressionAbonnement" 

##### Flux 3 – EmissionEvenement

Ci-dessous le diagramme de classe concernant le Flux 3-EmissionEvenement. Les sous-sections suivantes donnent des définitions aux attributs de chaque class identifiée.

 Diagramme de classe - EmissionAbonnement 

###### Classe "Emetteur"

| | | |
| :--- | :--- | :--- |
| idEmetteur : [1..1] Identifiant | Identifiant unique de l’émetteur. | Oui |

 Attributs de la classe "Emetteur" 

###### Classe "Evenement"

| | | |
| :--- | :--- | :--- |
| typeEvenement : [1..1] Code | Type de l’évènement (dépôt de document, sortie d’hôpital, etc.). | Oui |
| description : [1..1] Texte | Contenu de l’évènement. | Oui |
| occurence : [1..1] DateHeure | Date et heure à laquelle l’évènement a eu lieu. | Oui |
| declaration : [0..1] DateHeure | Date et heure de la transmission de l’évènement. | Non (Cette information peut être générée automatiquement par le système et ne circule pas dans le flux.) |

 Attributs de la classe "Evènement" 

###### Classe "PersonnePhysique"

| | | |
| :--- | :--- | :--- |
| nomFamille : [0..1] Texte | Toute personne possède un nom de famille (appelé auparavant nom patronymique). Ce nom figure sur l'acte de naissance. Il peut s'agir par exemple du nom du père.Ref.: Service-public.frSynonymes : nom patronymique, nom de naissance. | Non |
| prenomUsuel : [0..1] Texte | Le prénom usuel est un des prénoms inscrit dans l'acte de naissance. | Non |

 Attributs de la classe "PersonnePhysique" 

###### Classe "EntiteJuridique"

| | | |
| :--- | :--- | :--- |
| numFINESS : [0..1] Identifiant | Identifiant FINESS de l'entité juridique attribué lors de sa création.Les personnes morales identifiées par des numéros FINESS sont également dotées de numéros SIREN. Le numéro FINESS étant porteur intrinsèquement de liens avec le domaine sanitaire ou le domaine médico-social, il est, s'il existe, à privilégier pour l’identification de ces personnes morales en tant qu’acteurs sanitaires et médico-sociaux (Référentiel d’identification des acteurs sanitaires et médico-sociaux - Politique Générale de Sécurité des Systèmes d’Information de Santé (PGSSI-S)). | Non (L’attribut idEmetteur de la classe Emetteur peut être la même valeur du numéro FINESS de l’entité juridique) |
| addresseEJ : [0..*] Texte Addresse | Point(s) de contact. | Non |
| telecommunication [0..*] telecommunication | Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.). | Non |
| raisonSociale : [0..1] Texte | Nom de l’entité juridique. | Non |

 Attributs de la classe "EntiteJuridique" 

###### Classe "PersonnePriseEnCharge"

| | | |
| :--- | :--- | :--- |
| idPersonnePriseEnCharge : [0..1] Identifiant | Identifiant(s) de la personne prise en charge. | Non |
| adresse : [0..*] Adresse | Adresse(s) de correspondance permettant de contacter la personne prise en charge :- lorsque les structures ne sont pas identifiées : cas des remplaçants ou des professionnels venant de s’inscrire mais non encore installés;- hors de leurs lieux d’exercice, s’ils le souhaitent.Remarque : La première occurrence correspond aux coordonnées de correspondance du RPPS. | Non |
| telecommunication : [0..*] Telecommunication | Adresse(s) de télécommunication de la personne prise en charge (numéro de téléphone, adresse email, URL, etc.). | Non |

 Attributs de la classe "PersonnePriseEnCharge" 

###### Classe "Professionnel"

| | | |
| :--- | :--- | :--- |
| idPP : [0..1] Identifiant | Identifiant national de la personne physique:** Pour les professionnels: N° RPPS ou ADELI** Pour les acteurs non professionnels de santé employés d’une structure : l’identifiant est composé de l’identifiant principal de la structure et de l’identifiant interne attribué par la structure** Pour les étudiants, l'identifiant est le numéro SIRIUS ou le numéro Etudiant (identifiant ordinal dont les règles de génération sont propres à chaque ordre). | Non< (L’attribut idEmetteur de la classe Emetteur peut être la même valeur de l’identifiant du professionnel (NIR, INS-C, etc.).) |
| telecommunication : [0..*] Telecommunication | Adresse(s) de télécommunication du professionnel (numéro de téléphone, adresse email, URL, etc.). | Non |
| adresse : [0..*] Adresse | Adresse(s) de correspondance du professionnel. | Non |

 Attributs de la classe "Professionnel" 

##### Flux 4 – TransmissionOrdreNotification

Ci-dessous le diagramme de classe concernant le Flux4-TransmissionOrdreNotification et le Flux 5-NotificationEvenement. Les sous-sections suivantes donnent des définitions aux attributs de chaque classe identifiée

 Diagramme de classe – TransmissionOrdreNotification 

###### Classe "Abonne"

| | | |
| :--- | :--- | :--- |
| idAbonne : [1..1] Identifiant | Identifiant unique de l’abonné. | Oui |

 Attributs de la classe "Abonné" 

###### Classe "Evenement"

| | | |
| :--- | :--- | :--- |
| typeEvenement : [1..1] Code | Type de l’évènement (dépôt de document, sortie d’hôpital, etc.). | Oui |
| description : [1..1] Texte | Contenu de l’évènement. | Oui |
| occurrence : [0..1] DateHeure | Date à laquelle l’évènement a eu lieu. | Non |
| declaration : [0..1] DateHeure | Date et heure de la transmission de l’évènement. | Non (Cette information peut être générée automatiquement par le système et ne circule pas dans le flux.) |

 Attributs de la classe "Evènement" 

###### Classe "PersonnePhysique"

| | | |
| :--- | :--- | :--- |
| nomFamille : [0..1] Texte | Toute personne possède un nom de famille (appelé auparavant nom patronymique). Ce nom figure sur l'acte de naissance. Il peut s'agir par exemple du nom du père.Ref.: Service-public.frSynonymes : nom patronymique, nom de naissance. | Non |
| prenomUsuel : [0..1] Texte | Le prénom usuel est un des prénoms inscrit dans l'acte de naissance. | Non |

 Attributs de la classe "PersonnePhysique" 

###### Classe "Professionnel"

| | | |
| :--- | :--- | :--- |
| idPP : [0..1] Identifiant | Identifiant national de la personne physique:** Pour les professionnels: N° RPPS ou ADELI** Pour les acteurs non professionnels de santé employés d’une structure : l’identifiant est composé de l’identifiant principal de la structure et de l’identifiant interne attribué par la structure** Pour les étudiants, l'identifiant est le numéro SIRIUS ou le numéro Etudiant (identifiant ordinal dont les règles de génération sont propres à chaque ordre). | Non (L’attribut idEmetteur de la classe Emetteur peut être la même valeur de l’identifiant du professionnel (NIR, INS-C, etc.).) |
| telecommunication : [0..*] Telecommunication | Adresse(s) de télécommunication du professionnel (numéro de téléphone, adresse email, URL, etc.). | Non |

 Attributs de la classe "Professionnel" 

###### Classe "Abonnement"

| | | |
| :--- | :--- | :--- |
| idAbonnement : [1..1] Identifiant | Identifiant unique de l’abonnement. | Oui |
| mediaNotification : [1..1] Code | Media de diffusion de la notification (sms, mail, etc.). | Oui |

 Attributs de la classe "Abonnement" 

###### Classe "PersonnePriseEnCharge"

| | | |
| :--- | :--- | :--- |
| idPersonnePriseEnCharge : [0..1] Identifiant | Identifiant(s) de la personne prise en charge (identifiants de santé, identifiants locaux, etc.). | Non (Si la personne prise en charge est un patient, ce champ contiendra l’identifiant du patient.) |
| telecommunication : [0..*] Telecommunication | Adresse(s) de télécommunication de la personne prise en charge qui est abonnée aux notifications (numéro de téléphone, adresse email, URL, etc.). | Non |

 Attributs de la classe "PersonnePriseEnCharge" 

###### Classe "EntiteJuridique"

| | | |
| :--- | :--- | :--- |
| numFINESS : [0..1] Identifiant | Identifiant FINESS de l'entité juridique attribué lors de sa création.Les personnes morales identifiées par des numéros FINESS sont également dotées de numéros SIREN. Le numéro FINESS étant porteur intrinsèquement de liens avec le domaine sanitaire ou le domaine médico-social, il est, s'il existe, à privilégier pour l’identification de ces personnes morales en tant qu’acteurs sanitaires et médico-sociaux (Référentiel d’identification des acteurs sanitaires et médico-sociaux - Politique Générale de Sécurité des Systèmes d’Information de Santé (PGSSI-S)). | Non (L’attribut idEmetteur de la classe Emetteur peut être la même valeur du numéro FINESS de l’entité juridique (personne morale)) |
| telecommunication [0..*] telecommunication | Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.). | Non |
| raisonSociale : [0..1] Texte | Nom de l’entité juridique. | Non |

 Attributs de la classe "EntiteJuridique" 

###### Classe "Emetteur"

| | | |
| :--- | :--- | :--- |
| idEmetteur : [0..1] Identifiant | Identifiant(s) de l’émetteur de l’évènement. | Non |
| dateDeclaration : [0..1] DateHeure | Date et heure de la transmission de l’évènement. | Non |

 Attributs de la classe "Emetteur" 

###### Classe "AbonnePP"

| | | |
| :--- | :--- | :--- |
| **identifiantAbonnePP : [0..1] Identifiant** | Identifiant de la personne physique (il peut s’agir du NIR, par exemple, pour la personne prise en charge). | Non |
| **typeAbonnePP : [0..1] Code** | Type de la personne physique abonnée (professionnel, personne prise en charge, personne tierce, etc.). | Non |
| **telecommunication: [1..*] telecommunication** | Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.). | Oui |

 Attributs de la classe "AbonnePP" 

###### Classe "AbonnePM"

| | | |
| :--- | :--- | :--- |
| **identifiantAbonnePM : [0..1] Identifiant** | Identifiant de la personne morale. | Non |
| **typeAbonnePM : [0..1] Code** | Type de la personne morale abonnée. | Non |
| **telecommunication: [1..*] telecommunication** | Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.). | Oui |
| **nom : [0..1] Texte** | Nom sous lequel la personne morale exerce son activité. | Non |

 Attributs de la classe "AbonnePM" 

##### Flux 5 – NotificationEvenement

Ce flux est modélisé par le même modèle hiérarchique du Flux 3 –TransmissionOrdreNotification étant donné qu’ils peuvent contenir les mêmes informations métier.

