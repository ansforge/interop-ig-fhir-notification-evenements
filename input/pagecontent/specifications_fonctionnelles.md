### Exemples de cas d’usage

##### Parcours de soins d’une personne diabétique

**<u>Pré-conditions :</u>**

1.  Une plateforme de suivi d’une personne prise en charge dédiée à la
    coordination des soins concentre les paramétrages des droits de
    notification ainsi que le mécanisme opératoire des notifications.

2.  Les professionnels de santé présentés dans ce cas d’usage sont
    enregistrés sur cette plateforme. Les médecins sont identifiés comme
    pouvant recevoir des notifications liées aux personnes prises en
    charge.

3.  La personne prise en charge a été confirmé positivement diabétique
    par un dépistage. Son médecin traitant et un diabétologue lui ont
    défini son plan personnalisé de soins (PPS). Le plan de soin est
    stocké dans l’espace réservé à cet effet sur la plateforme de suivi.

**<u>Scénario nominal :</u>**

1.  La personne prise en charge connait une complication nécessitant une
    hospitalisation.

2.  L’hôpital dans lequel est admise la personne prise en charge envoie
    cette information à la plateforme de suivi.

3.  Le médecin traitant reçoit par conséquent une notification via un
    canal sécurisé indiquant que la personne prise en charge a été admis
    à l’hôpital.

4.  Le diabétologue reçoit également une notification via un canal
    sécurisé indiquant que la personne prise en charge a été admise à
    l’hôpital.

##### Mise à disposition de résultats d’examen de laboratoire

**<u>Pré-conditions :</u>**

1.  Un patient et son médecin traitant sont inscrits à un service de
    notification offert par la plateforme de suivi. Le canal de
    diffusion de notification préférentiel du médecin traitant est par
    exemple le sms et celui du patient est la messagerie électronique.

2.  Le médecin traitant rédige une ordonnance d’examens biologiques pour
    le patient. Ce dernier se rend au laboratoire muni de sa
    prescription.

3.  Le professionnel de santé du laboratoire effectue les prélèvements
    indiqués sur l’ordonnance, saisit les données nécessaires dans le SI
    du laboratoire, met les prélèvements à analyser et recueille les
    résultats.

**<u>Scénario nominal :</u>**

1.  Le laboratoire transmet les résultats à la plateforme de suivi.

2.  La plateforme de suivi notifie le patient et son médecin traitant de
    la disponibilité des résultats d’analyse selon le canal préférentiel
    de chacun.

##### Consultation d’un « pool » de notifications

**<u>Pré-conditions :</u>**

1.  L’ensemble des notifications émises par la plateforme de suivi sont
    consultables dans le logiciel métier du professionnel de santé.

2.  Une notification non consultée est marquée comme « Non lue ».

**<u>Scénario nominal :</u>**

1.  Lorsque le professionnel consulte une notification, celle-ci passe
    en statut « Lue ».

2.  La plateforme de suivi est alors automatiquement notifiée de ce
    changement de statut et se met à jour en conséquence.

**<u>Scénario alternatif :</u>**

1.  Le professionnel peut forcer le statut de la notification de « Lue »
    à « Non lue ».

2.  La plateforme de suivi est alors automatiquement notifiée de ce
    changement de statut et se met à jour en conséquence. La plateforme
    sauvegarde l’historique des changements.

Remarque : le « pool » de notification peut être intégré dans le
logiciel métier du professionnel ou dans un outil « externe » qui peut
gérer les notifications provenant de sources diverses.

### Etape 1: Organisation du contexte métier

Le but de cette étape est d’organiser la vue métier dans laquelle
s’insère le projet et d'identifier le ou les processus du périmètre du
projet. Les concepts suivants doivent être définis :  
  
- le domaine d'activité dans lequel se situe le projet; le domaine est
composé d'un ou de plusieurs groupes de processus.  
- les groupes de processus qui sont composés eux-mêmes d’un ensemble de
processus métier.

Le domaine de la notification d'évènements est relatif au traitement et
la gestion des notifications d'évènements concernant une personne prise
en charge dans le domaine sanitaire, médico-administratif, médico-social
et social.

<div class="figure" style="text-align: center;">
    <img src="organisationContexteMetier.png"
    alt="Organisation du contexte métier"
    title="Organisation du contexte métier"
    style="width:5.74528in;height:2.95283in">

    <p>
    Organisation du contexte métier 
    </p>
</div>

Cette étude métier couvre les processus suivants :

**La gestion des abonnements**:

- La création ou la mise à jour d’un d’abonnement

- La suppression d’un abonnement

**La gestion des évènements:**

- L’émission d’un événement

**La gestion des notifications:**

- La transmission d’un ordre de notification.

### Etape 2: Définition du processus collaboratif

Le but de cette étape est de définir les processus métier identifiés
dans le diagramme défini à l’étape 1. Cette modélisation est entreprise
de façon macroscopique en représentant les processus par des diagrammes
de cas d’utilisation UML. Les définitions de termes utilisés dans cette
étape ainsi que tout au long du document sont listées ci-dessous. A
noter que chaque sous-section peut contenir ses définitions propres,
notamment celles des flux d'informations identifiés.

\- **Personne prise en charge**: Il s’agit de la personne prise en
charge que ce soit au niveau sanitaire, médico-administratif,
médico-social et social. Cette personne peut être un usager dans le
secteur social ou un patient.

\- **Évènement**: un événement correspond à un fait significatif lors de
la prise en charge d’une personne. Par exemple, un événement peut être
la disponibilité d’un nouveau document comme un compte-rendu d’examen de
biologie, l’admission d’une personne dans un hôpital ou l’inscription
d’une personne dans un programme de suivi de personnes en risque de
perte d’autonomie.

\- **Abonnement**: un abonnement porte sur les types d'évènements
qui intéressent l’abonné et doivent faire l’objet d’une notification. Un
abonnement est défini par l’identification de l’abonné, le médium de
notification à utiliser, la personne prise en charge associée aux
évènements, le type d’événement donnant lieu à notification et la
période de validité de l’abonnement.

\- **Média de notification**: un média de notification est le moyen de
communication par lequel la notification parvient à l’abonné (ex. sms,
mail, pop-up dans une application…).

\- **Professionnel**: un professionnel est une personne qui participe à
la prise en charge d’une personne que ce soit au niveau sanitaire,
médico-administratif, médico-social et social.

Les sous-sections suivantes présentent les cas d'utilisation identifiés
dans le système ainsi que les acteurs et les actions qui y contenus.

##### \[Cas d’utilisation\] Gestion des abonnements (CI-SIS-NE-PGA-CU001)

**<u>Cas d'usage</u>** : Un souscripteur habilité crée, modifie ou
supprime un abonnement aux notifications d’événements sur une plateforme
ou un système de gestion dédié à cet effet pour le compte d’une personne
physique ou morale.

###### "Diagramme de cas d’utilisation : Création ou mise à jour d’un abonnement (CI-SIS-NE-CU-SA-001)"

Le processus métier de gestion d'abonnement amène à considérer un cas
d'utilisation de "Création ou de mise à jour d’un abonnement" avec les
différents acteurs impliqués.

<div class="figure" style="text-align: center;">
    <img src="CI-SIS-NE-CU-SA-001.png"
    alt="Création ou mise à jour d’un abonnement"
    title="CI-SIS-NE-CU-SA-001"
    style="width:5.07547in;height:1.35433in">

    <p>
    Diagramme de cas d'utilisation : Création ou mise à jour d’un abonnement (CI-SIS-NE-CU-SA-001)
    </p>

</div>

###### Les acteurs impliqués

| **Acteur** | **Description** |
|----|----|
| Gestionnaire d'abonnements | Le gestionnaire d’abonnements est un acteur système qui administre les abonnements et les paramètres d’usage des notifications d’événements. |
| Souscripteur | Un souscripteur est la personne (physique ou morale) qui est habilitée à créer, modifier ou supprimer un abonnement au service de notification d’événements. Un souscripteur peut être aussi l’abonné lui-même. |

<p style="text-align: center;">
Table des acteurs impliqués dans le cas d’utilisation Création ou mise à jour d’un abonnement
</p>

- Détails du cas d'utilisation <!-- Problème d'affichage dans l'IG : initialement #######-->

Cette section décrit en détail chaque cas d'utilisation de la manière
usuelle: description, pré-condition, scénario(s), exception,
post-condition, contraintes fonctionnelles, autres contraintes.

Qui:

Gestionnaire d'abonnements, Souscripteur

Description:

Scénario nominal : Le souscripteur crée ou met à jour un abonnement pour
un abonné. Cet abonné peut être une personne physique ou morale.

Pré-Conditions:

\- Les personnes physiques ou morales impliquées dans la notification
d’évènements sont enregistrées via un gestionnaire d’inscriptions et par
conséquent connues du système.  
- Le paramétrage des média de diffusion est pris en charge par le
gestionnaire d’inscriptions.  
- L’abonné effectue une demande d’abonnements à notification au
souscripteur.

Scénario Alternatif:

L’abonné peut être lui-même habilité à gérer son propre abonnement sans
passer par un souscripteur.

###### "Diagramme de cas d'utilisation : Suppression d’un abonnement (CI-SIS-NE-CU-DA-001) "

Le processus métier de gestion d'abonnement amène à considérer un cas
d'utilisation de "Suppression d’un abonnement" avec les différents
acteurs impliqués.

<div class="figure" style="text-align: center;">
    <img src="CI-SIS-NE-CU-DA-001.png"
    alt="Suppression d’un abonnement"
    title="CI-SIS-NE-CU-DA-001"
    style="width:5.10377in;height:1.24528in">

    <p>
    Diagramme de cas d'utilisation : Suppression d’un abonnement (CI-SIS-NE-CU-DA-001)
    </p>
</div>

- Les acteurs impliqués <!-- Problème d'affichage dans l'IG : initialement #######-->

[Voir section](#les-acteurs-impliqués)
- Détails du cas d'utilisation <!-- Problème d'affichage dans l'IG : initialement #######-->

Cette section décrit en détail chaque cas d'utilisation de la manière
usuelle: description, pré-condition, scénario(s), exception,
post-condition, contraintes fonctionnelles, autres contraintes.

Qui:

Gestionnaire d'abonnements, Souscripteur

Description:

Le souscripteur supprime un abonnement.  
Le cas "Suppression d’un abonnement" est distinct du cas d’utilisation
"Création ou mise à jour d’un abonnement" parce que les informations
métier manipulées sont différentes.

Scenario Alternatif:

L'abonné peut être lui-même habilité à gérer son propre abonnement sans
passer par un souscripteur.

#####  \[Cas d’utilisation\] Gestion des évènements (CI-SIS-NE-PGE-CU001) 

**<u>Cas d'usage</u>** : Un acteur déclenche l'envoi d'un évènement à
une plateforme ou un système de gestion dédié à cet effet.

###### "Diagramme de cas d'utilisation : Emission d'un évènement (CI-SIS-NE-CU-EE-001)"

Le processus métier de gestion d'évènements amène à considérer un cas
d'utilisation d’une "Emission d'un évènement" avec les différents
acteurs impliqués.

<div class="figure" style="text-align: center;">
    <img src="CI-SIS-NE-CU-EE-001.png"
    alt="Emission d'un évènement"
    title="CI-SIS-NE-CU-EE-001"
    style="width:4.97917in;height:0.84092in">

    <p>
    Diagramme de cas d'utilisation : Emission d'un évènement (CI-SIS-NE-CU-EE-001)
    </p>
</div>

###### Les acteurs impliqués 

| Acteur | Description |
|----|----|
| Emetteur | L'émetteur est une personne morale ou physique qui envoie un évènement au gestionnaire d'abonnements soit de manière automatique, soit manuellement. L'émetteur est enregistré et connu par le système qui réceptionne et traite les évènements. |
| Gestionnaire d'abonnements | Le gestionnaire d’abonnements joue aussi le rôle de gestionnaire d’évènements. C’est un acteur système qui enregistre tous les événements susceptibles de conduire à des notifications et transmet l’ordre de notification au gestionnaire de notifications. |

<p style="text-align: center;">
Table des acteurs impliqués dans le cas d’utilisation Emission d’un évènement
</p>

###### Détails du cas d'utilisation

Cette section décrit en détail chaque cas d'utilisation de la manière
usuelle: description, pré-condition, scénario(s), exception,
post-condition, contraintes fonctionnelles, autres contraintes.

Qui:

Gestionnaire d'abonnements, Emetteur

Description:

L’émission d’un évènement concerne l'envoi d'un évènement par un
émetteur. Cet évènement peut donner lieu à la transmission d’un ordre de
notification.

Pré-Conditions:

L'émetteur est pré-enregistré via le gestionnaire d’inscriptions.

##### \[Cas d’utilisation\] Gestion des notifications (CI-SIS-NE-PGN-CU001)

**<u>Cas d'usage</u> :** Une plateforme ou un système de gestion dédié
traite l'évènement de manière à pouvoir aviser les abonnés auxquels
l'évènement est destiné, cela se traduit par la transmission d'un ordre
de notification.

###### "Diagramme de cas d'utilisation: Transmission d'un ordre de notification (CI-SIS-NE-CU-TO-001)"

Le processus métier de gestion d'évènement amène à considérer un cas
d'utilisation de "Transmission d'un ordre de notification" avec les
différents acteurs impliqués.

<div class="figure" style="text-align: center;">
    <img src="CI-SIS-NE-CU-TO-001.png"
    alt="Transmission d'un ordre de notification"
    title="CI-SIS-NE-CU-TO-001"
    style="width:4.86806in;height:1.91338in">

    <p>
    Diagramme de cas d'utilisation : Transmission d'un ordre de notification (CI-SIS-NE-CU-TO-001)
    </p>
</div>

###### Les acteurs impliqués 

| Acteur | Description |
|----|----|
| Abonné | Un abonné est une personne destinatrice des notifications d'évènements dans le cadre d’un abonnement. Un abonné peut être un professionnel, une structure, la personne prise en charge ou une tierce personne autorisée à recevoir des notifications sur la personne prise en charge. |
| Gestionnaire d'abonnements | Le gestionnaire d’abonnements est un acteur système qui administre les abonnements et les paramètres d’usage des notifications d’événements. Il joue aussi le rôle d’un gestionnaire d’évènements et enregistre tous les événements susceptibles de conduire à des notifications et transmet l’ordre de notification au gestionnaire de notifications. |
| Gestionnaire de notifications | Le gestionnaire de notifications est un acteur système qui envoie les notifications aux abonnés concernés en fonction des informations recueillies depuis les gestionnaires d’abonnements. |

<p style="text-align: center;">
Table des acteurs impliqués dans le cas d’utilisation Transmission d’un ordre de notification
</p>

###### Les détails du cas d'utilisation

Cette section décrit en détail chaque cas d'utilisation de la manière
usuelle: description, pré-condition, scénario(s), exception,
post-condition, contraintes fonctionnelles, autres contraintes.

Qui:

Gestionnaire de notifications, Gestionnaire d'abonnements, Abonné

**Description:**

Scénario nominal générique : Un événement enregistré déclenche
automatiquement l’envoi d’une notification à un ou plusieurs abonné(s)
dans la mesure où leur abonnement est configuré pour recevoir ce type
d’événement :

\- L'émetteur transmet l’évènement via le gestionnaire d’abonnements.

\- Le gestionnaire d’abonnements traite l'évènement et identifie les
destinataires de la notification en fonction des abonnements en sa
possession.

\- Le gestionnaire d’abonnements transmet un ordre de notification au
gestionnaire de notifications.

\- L'abonné ou les abonnés sont prévenus de l’événement via le
gestionnaire de notifications.

<u>Exemple de cas d’usage</u> : En tenant compte des pré-conditions du
cas d'usage présenté ci-dessous, le scénario décrit le cas d'une sortie
d’hôpital d’une personne prise en charge.

\- Un hôpital (émetteur) transmet au gestionnaire d’abonnements un
nouvel évènement concernant la sortie d’hôpital du patient X.

\- Le gestionnaire d’abonnements traite l'évènement et identifie le
professionnel abonné à la notification d’évènements du patient X.

\- Le gestionnaire d’abonnements transmet un ordre de notification au
gestionnaire de notifications.

\- Le professionnel abonné est prévenu de la sortie d’hôpital du patient
X via le gestionnaire de notifications.

**Pré-Conditions:**

Ces pré-conditions sont spécifiques à l’exemple de cas d’usage présenté
ci-dessous et servent d'illustration :  
- L’abonné est enregistré via le gestionnaire d’inscriptions.  
- Le professionnel, l’hôpital et la personne prise en charge sont
enregistrés et la préférence de média de notification est paramétrée via
le gestionnaire d’inscriptions.

**<u>Contraintes « métier»:</u>**

Les 4 types d’évènements pris en compte à ce jour sont :

1.  Flux du dépôt de document

2.  Flux d'admission dans un établissement de santé

3.  Flux de sortie d'un établissement de santé

4.  Flux de création d'une note pour un patient dans le cahier de
    liaison

### Etape 3 : Description du processus collaboratif et identification des flux 

L’objectif de cette étape est de décrire les processus métier
collaboratifs définis dans les cas d'utilisation de l’étape 2, ainsi que
les flux échangés par les acteurs. Dans ce document, les processus sont
modélisés avec des diagrammes d'activités UML.

##### \[Activité\] Gestion des abonnements (CI-SIS-NE-PGA-DA001)

Cette section présente la modélisation du processus de la création ou de
mise à jour d’un abonnement. Elle contient également une description des
acteurs, des actions correspondantes et les flux d’échanges.

###### Diagramme d’activité : Création ou mise à jour d’un abonnement (CI-SIS-NE-DA-SA-001)

Le processus métier de gestion d'abonnement implique le flux d’échange
de demande de création ou de mises à jour "SouscriptionAbonnement".

<div class="figure" style="text-align: center;">
    <img src="CI-SIS-NE-DA-SA-001.png"
    alt="Diagramme d'activité : Création ou mise à jour d’un
abonnement"
    title="CI-SIS-NE-DA-SA-001"
    style="width:3.82075in;height:3.47589in">

    <p>
    Diagramme d'activité : Création ou mise à jour d’un abonnement (CI-SIS-NE-DA-SA-001)
    </p>
</div>

**Acteurs**

| Acteur | Description |
|----|----|
| Souscripteur | Un souscripteur est la personne (physique ou morale) qui est habilitée à créer, modifier ou supprimer un abonnement au service de notification d’événements. Un souscripteur peut être aussi l’abonné lui-même. |
| Gestionnaire d'abonnements | Le gestionnaire d’abonnements est un acteur système qui stocke les abonnements et les paramètres d’usage des notifications d’événements. |

<p style="text-align: center;">
Liste des acteurs
</p>

**Actions**

Initier une demande de création ou de mise à jour d'un abonnement

Le souscripteur transmet au gestionnaire d’abonnements les
caractéristiques de l’abonnement (abonné, média de notification, type
d’événement à notifier, etc.). Cette action peut également concerner une
demande de mise à jour d’un d’abonnement.

Créer ou mettre à jour l'abonnement

Le gestionnaire d’abonnements traite la demande du souscripteur.  

###### Diagramme d’activité : Suppression d’un abonnement (CI-SIS-NE-DA-DA-001)

Le processus métier de gestion d'abonnement implique le flux d’échange
de demande de création ou de mise à jour : "SuppressionAbonnement".

<div class="figure" style="text-align: center;">
    <img src="CI-SIS-NE-DA-DA-001.png"
    alt="Diagramme d'activité : Suppression d'un abonnement"
    title="CI-SIS-NE-DA-DA-001"
    style="width:5.80541in;height:4.01042in">

    <p>
    Diagramme d'activité : Suppression d'un abonnement (CI-SIS-NE-DA-DA-001)
    </p>
</div>

**Acteurs**

| Acteur | Description |
|----|----|
| Souscripteur | Un souscripteur est la personne (physique ou morale) qui est habilitée à créer, modifier ou supprimer un abonnement au service de notification d’événements. Un souscripteur peut être aussi l’abonné lui-même. |
| Gestionnaire d'abonnements | Le gestionnaire d’abonnements est un acteur système qui administre les abonnements et les paramètres d’usage des notifications d’événements. |

<p style="text-align: center;">
Liste des acteurs
</p>

**Actions**

Initier une demande de suppression d'abonnement

Le souscripteur transmet au gestionnaire d’abonnements les
caractéristiques de l’abonnement à supprimer.

Supprimer un abonnement

Le gestionnaire d’abonnements traite la demande de suppression du
souscripteur.

##### \[Activité\] Gestion des évènements (CI-SIS-NE-PGE-DA001)

Cette section présente la modélisation du processus de l'émission d'un
évènement. Elle contient également une description des acteurs, des
actions correspondantes et les flux d’échanges.

###### Diagramme d'activité : Emission d'un évènement (CI-SIS-NE-DA-EE-001)

Le processus métier de gestion d'évènement implique le flux d’échange
entre l'émetteur et la plateforme ou le système de gestion :
"EmissionEvenement".

<div class="figure" style="text-align: center;">
    <img src="CI-SIS-NE-DA-EE-001.png"
    alt="Diagramme d'activité : Emission d'un évènement"
    title="CI-SIS-NE-DA-EE-001"
    style="width:3.75694in;height:2.91466in">

    <p>
    Diagramme d'activité : Emission d'un évènement (CI-SIS-NE-DA-EE-001)
    </p>
</div>

**Acteurs**

| Acteur | Description |
|----|----|
| Emetteur | L'émetteur est une personne morale ou physique qui envoie un évènement au gestionnaire d’abonnements soit de manière automatique, soit manuellement. L'Emetteur est enregistré et donc connu par le système qui réceptionne et traite les évènements. |
| Gestionnaire d’abonnements | Le gestionnaire d’abonnements joue aussi le rôle de gestionnaire d’événements. C’est un acteur système qui enregistre l’ensemble des événements susceptibles de conduire à des notifications et transmet l’ordre de notification au gestionnaire de notifications. |

<p style="text-align: center;">
Liste des acteurs
</p>

**Actions**

Emettre un évènement

L'émission est déclenchée suite à une action.  
Les actions sont de type admission ou sortie d'un établissement de
santé, dépôt de document, rédaction d'une lettre de liaison, etc.  
Les émissions sont donc les vecteurs de l'envoi de l'évènement.

Traiter l'évènement

L'évènement est traité par une plateforme ou un système de gestion qui
analyse, qualifie et vérifie si cet évènement est lié à des abonnements.

##### \[Activité\] Gestion des notifications (CI-SIS-NE-PGN-DA001) 

Cette section présente la modélisation du processus de la transmission
de l'ordre de notification d'un évènement. Elle contient également une
description des acteurs, des actions correspondantes et les flux
d’échanges.

###### Diagramme d'activité : Transmission d'un ordre de notification (CI-SIS-NE-DA-TO-001)

Le processus métier de gestion de notification implique le flux
d’échange : "TransmissionOrdreNotification".

<div class="figure" style="text-align: center;">
    <img src="CI-SIS-NE-DA-TO-001.png"
    alt="Diagramme d'activité : Transmission d'un ordre de
notification"
    title="CI-SIS-NE-DA-TO-001"
    style="width:4.8656in;height:4.53681in">

    <p>
    Diagramme d'activité : Transmission d'un ordre de notification (CI-SIS-NE-DA-TO-001)
    </p>
</div>

**Acteurs**

| Acteur | Description |
|----|----|
| Gestionnaire d’abonnements | Le gestionnaire d’abonnements joue aussi le rôle de gestionnaire d’évènements. C’est un acteur système qui enregistre l’ensemble des événements susceptibles de conduire à des notifications et transmet l’ordre de notification au gestionnaire de notifications. |
| Gestionnaire de notifications | Le gestionnaire de notifications est un acteur système qui envoie les notifications aux abonnés concernés en fonction des informations recueillies depuis les gestionnaires d’abonnements et d’événements. |
| Abonné | Un abonné est une personne destinatrice des notifications d'évènements dans le cadre d’un abonnement. Un abonné peut être un professionnel, une structure, la personne prise en charge ou une tierce personne autorisée à recevoir des notifications concernant la personne prise en charge. |

<p style="text-align: center;">
Liste des acteurs
</p>

**Actions**

Traiter l'évènement

La plateforme ou le système dédié prend en compte l'évènement liée à une
action réalisée et l'analyse.  
Les actions sont de type admission ou sortie d'un établissement de
santé, dépôt de document, création d’une note dans le cahier de liaison,
etc.  
La plateforme ou le système dédié vérifie si le contexte de cet
évènement (l'action opérée et la personne prise en charge) concerne des
abonnés destinataires.  
Si des abonnés sont identifiés, un ordre de notification de l'évènement
est transmis.  
Les abonnés sont forcément habilités à recevoir les notifications.

Transmettre un ordre de notification

La plateforme ou le système dédié prend en compte l'ordre de
notification d'évènement et traite l'envoi.

Réceptionner la notification

L'abonné est en mesure de réceptionner la notification via son propre
système.

### Etape 4: Qualification des flux échangés 

Les flux échangés entre les acteurs ont été identifiés à l'étape 3.
Cette nouvelle étape vise à qualifier les flux d'informations en
définissant parmi eux ceux qui sont structurés. Cette qualification est
effectuée en élaborant un tableau répertoriant les flux identifiés à
l'étape précédente et présenté ci-dessous.

<table style="width:91%;">
<colgroup>
<col style="width: 12%" />
<col style="width: 29%" />
<col style="width: 16%" />
<col style="width: 19%" />
<col style="width: 13%" />
</colgroup>
<thead>
<tr>
<th style="text-align: left;">Numéro du flux</th>
<th style="text-align: left;">Nom du flux</th>
<th style="text-align: left;">Partenaire Emetteur</th>
<th style="text-align: left;">Partenaire Récepteur</th>
<th style="text-align: left;">Nature du flux</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: left;">Flux1</td>
<td style="text-align: left;">SouscriptionAbonnement</td>
<td style="text-align: left;">Souscripteur</td>
<td style="text-align: left;">Gestionnaire d’abonnements</td>
<td style="text-align: left;"><strong>Flux structuré</strong></td>
</tr>
<tr>
<td style="text-align: left;">Flux2</td>
<td style="text-align: left;">SuppressionAbonnement</td>
<td style="text-align: left;">Souscripteur</td>
<td style="text-align: left;">Gestionnaire d’abonnements</td>
<td style="text-align: left;"><strong>Flux structuré</strong></td>
</tr>
<tr>
<td style="text-align: left;">Flux3</td>
<td style="text-align: left;">EmissionEvenement</td>
<td style="text-align: left;">Emetteur</td>
<td style="text-align: left;">Gestionnaire d’abonnements</td>
<td style="text-align: left;"><strong>Flux structuré</strong></td>
</tr>
<tr>
<td style="text-align: left;">Flux4</td>
<td style="text-align: left;">TransmissionOrdreNotification</td>
<td style="text-align: left;">Gestionnaire d’abonnements</td>
<td style="text-align: left;"><p>Gestionnaire de</p>
<p>notifications</p></td>
<td style="text-align: left;"><strong>Flux structuré</strong></td>
</tr>
<tr>
<td style="text-align: left;">Flux5</td>
<td style="text-align: left;">NotificationEvenement</td>
<td style="text-align: left;"><p>Gestionnaire de</p>
<p>notifications</p></td>
<td style="text-align: left;">Abonné</td>
<td style="text-align: left;"><strong>Flux structuré</strong></td>
</tr>
</tbody>
</table>

<p style="text-align: center;">
Liste des flux identifiés
</p>

### Etape 5: Identification des informations véhiculées dans les flux

Dans cette section, il s'agit de définir les informations « métier »
présentes dans chaque flux structuré identifié. La Table ci-dessous
liste les concepts présents dans les flux identifiés.

| Concepts | Définition |
|----|----|
| Emetteur | L ‘émetteur est la personne (physique ou morale) qui informe le gestionnaire d’abonnements d’un événement concernant une personne prise en charge. |
| Abonné | C’est une personne destinatrice des notifications dans le cadre d’un abonnement. Un abonné peut être un professionnel, une structure ou une tierce personne autorisée à recevoir des notifications sur la prise en charge d’une personne. |
| Abonnement | Un abonnement porte sur les types d'évènements qui intéressent l’abonné et doivent faire l’objet d’une notification. |
| Evènement | Un événement correspond à un fait significatif lors de la prise en charge d’une personne. |
| PersonnePriseEnCharge | C’est une personne prise en charge que ce soit au niveau sanitaire, médico-administratif, médico-social et social. |
| AbonnéPP | Il s’agit d’une personne physique (un professionnel, une personne prise en charge, une personne tierce, etc.) qui possède un abonnement et qui est susceptible de recevoir des notifications concernant des évènements auxquels elle est inscrite. |
| AbonnéPM | Il s’agit d’une personne morale qui possède un abonnement et qui est susceptible de recevoir des notifications concernant des évènements auxquels elle est inscrite. |

<p style="text-align: center;">
Liste des concepts «  métier » identifiés
</p>

### Etape 6: Élaboration du modèle hiérarchique des flux structurés

Le but de cette étape est d'élaborer des diagrammes de classe (modèle
hiérarchique) de chaque flux structuré à partir des informations métier
identifiées. La représentation formalisée du flux doit prendre en compte
deux exigences supplémentaires:

• Harmonisation du modèle avec d'autres flux: il faut réutiliser les
classes génériques et mutualisées, mises à disposition dans le modèle
des objets de santé (MOS);

• Hiérarchie: le modèle doit adopter une structure hiérarchique au plus
proche du besoin métier.

La Table ci-dessous liste les objets « métier » identifiés et leurs
correspondances avec les classes du MOS (Version 1.5).

<table style="width:88%;">
<colgroup>
<col style="width: 30%" />
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr>
<th>Objets identifiés</th>
<th>Objets MOS correspondants</th>
<th style="text-align: center;">Attributs MOS à restreindre dans le
modèle du flux</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Professionnel</strong></td>
<td><p>PersonnePhysique,</p>
<p>Professionnel</p></td>
<td>Oui</td>
</tr>
<tr>
<td><strong>Abonné</strong></td>
<td><p>PersonnePhysique,</p>
<p>Professionnel,</p>
<p>Patient,</p>
<p>EntitéJuridique</p></td>
<td>Oui</td>
</tr>
<tr>
<td><strong>Emetteur</strong></td>
<td><p>PersonnePhysique,</p>
<p>Professionnel,</p>
<p>EntitéJuridique</p></td>
<td>Oui</td>
</tr>
<tr>
<td><strong>EntitéJuridique</strong></td>
<td>EntitéJuridique</td>
<td>Oui</td>
</tr>
<tr>
<td><strong>PersonnePriseEnCharge</strong></td>
<td><p>PersonnePhysique</p>
<p>Patient</p></td>
<td>Oui</td>
</tr>
<tr>
<td><strong>Abonnement</strong></td>
<td>-</td>
<td>-</td>
</tr>
<tr>
<td><strong>Evènement</strong></td>
<td>Evènement</td>
<td>Oui</td>
</tr>
<tr>
<td><strong>AbonnéPP</strong></td>
<td>PersonnePhysique</td>
<td>Oui</td>
</tr>
<tr>
<td><strong>AbonnéPM</strong></td>
<td>-</td>
<td>-</td>
</tr>
</tbody>
</table>

<p style="text-align: center;">
Liste des correspondances entre les concepts « métier » identifiés et les concepts du MOS
</p>

A noter que les objets identifiés qui ne se trouvent pas dans le MOS
vont faire l’objet d’une demande d’évolution du MOS ou rester spécifique
au projet.

Les sections qui suivent présentent les diagrammes de classes de chaque
flux structuré identifié. Il est à noter que les flux
**TransmissionOrdreNotification** et **NotificationEvenement** sont
modélisés avec le même diagramme de classe, étant donné que ces flux
peuvent contenir les mêmes informations métier.

##### Flux 1 – SouscriptionAbonnement

Ci-dessous le diagramme de classe concernant le Flux 1-
SouscriptionAbonnement. Cette section contient également la description
des attributs dans chaque classe identifiée.

<div class="figure" style="text-align: center;">
    <img src="SouscriptionAbonnement.png"
    alt=" Diagramme de classe – SouscriptionAbonnement"
    title="SouscriptionAbonnement"
    style="width:10in;height:auto;">

    <p>
    Diagramme de classe – SouscriptionAbonnement
    </p>
</div>

###### Classe "Abonnement"

<table>
  <thead>
    <tr>
      <th>Nom</th>
      <th>Description</th>
      <th>Obligatoire</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>idAbonnement : [0..1] Identifiant</td>
      <td>Identifiant de l’abonnement.</td>
      <td>Non (L’identifiant de l’abonnement est une information obligatoire. Par contre, cette information ne circule pas dans le flux d’échange qui concerne la création d’un abonnement et peut être automatiquement générée par le gestionnaire d’abonnements)</td>
    </tr>
    <tr>
      <td>mediaDiffusion : [1..1] Code</td>
      <td>Média de diffusion de la notification (sms, mail, etc.).</td>
      <td>Oui</td>
    </tr>
    <tr>
      <td>validiteDebut : [1..1] DateHeure</td>
      <td>Date de début de l’abonnement.</td>
      <td>Oui</td>
    </tr>
    <tr>
      <td>validiteFin : [1..1] DateHeure</td>
      <td>Date de fin de l’abonnement.</td>
      <td>Oui</td>
    </tr>
    <tr>
      <td>dateDemande : [0..1] DateHeure</td>
      <td>Date de la demande de création, modification ou suppression de l’abonnement.</td>
      <td>Non</td>
    </tr>
  </tbody>
</table>

<p style="text-align: center;">
Attributs de la classe "Abonnement"
</p>

###### Classe "Abonne"

| Nom | Description | Obligatoire |
|----|----|----|
| idAbonne : \[1..1\] Identifiant | Identifiant unique de l’abonné. | Oui |

<p style="text-align: center;">
Attributs de la classe "Abonné"
</p>

###### Classe "PersonnePhysique"

<table style="width:98%;">
<colgroup>
<col style="width: 20%" />
<col style="width: 64%" />
<col style="width: 12%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;">Nom</th>
<th style="text-align: center;">Description</th>
<th style="text-align: center;">Obligatoire</th>
</tr>
</thead>
<tbody>
<tr>
<td>nomFamille : [0..1] Texte</td>
<td>Toute personne possède un nom de famille (appelé auparavant nom
patronymique). Ce nom figure sur l'acte de naissance. Il peut s'agir par
exemple du nom du père.<br />
Ref.: Service-public.fr<br />
Synonymes : nom patronymique, nom de naissance.</td>
<td>Non</td>
</tr>
<tr>
<td>prenomUsuel: [0..1] Texte</td>
<td>Le prénom usuel est un des prénoms inscrit dans l'acte de
naissance.</td>
<td>Non</td>
</tr>
</tbody>
</table>

<p style="text-align: center;">
Attributs de la classe "PersonnePhysique"
</p>

###### Classe "Evenement"

| Nom | Description | Obligatoire |
|----|----|----|
| typeEvenement : \[1..1\] Code | Type de l’évènement (dépôt de document, sortie d’hôpital, etc.). | Oui |

<p style="text-align: center;">
Attributs de la classe "Evènement"
</p>

###### Classe "PersonnePriseEnCharge"

<table style="width:99%;">
<colgroup>
<col style="width: 31%" />
<col style="width: 55%" />
<col style="width: 12%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;">Nom</th>
<th style="text-align: center;">Description</th>
<th style="text-align: center;">Obligatoire</th>
</tr>
</thead>
<tbody>
<tr>
<td>idPersonnePriseEnCharge : [0..1] Identifiant</td>
<td>Identifiant(s) de la personne prise en charge (identifiants de
santé, identifiants locaux, etc.).</td>
<td>Non (Si la personne prise en charge est un patient, ce champ contiendra l’identifiant du patient)</td>
</tr>
<tr>
<td>adresse : [0..*] Adresse</td>
<td>Adresse(s) de correspondance permettant de contacter la personne
prise en charge :<br />
- lorsque les structures ne sont pas identifiées : cas des remplaçants
ou des professionnels venant de s’inscrire mais non encore
installés;<br />
- hors de leurs lieux d’exercice, s’ils le souhaitent.<br />
Remarque : La première occurrence correspond aux coordonnées de
correspondance du RPPS.</td>
<td>Non</td>
</tr>
<tr>
<td>telecommunication : [0..*] Telecommunication</td>
<td>Adresse(s) de télécommunication de la personne prise en charge
(numéro de téléphone, adresse email, URL, etc.).</td>
<td>Non</td>
</tr>
</tbody>
</table>

<p style="text-align: center;">
Attributs de la classe "PersonnePriseEnCharge"
</p>

###### Classe "Professionnel"

<table style="width:98%;">
<colgroup>
<col style="width: 26%" />
<col style="width: 57%" />
<col style="width: 14%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;">Nom</th>
<th style="text-align: center;">Description</th>
<th style="text-align: center;">Obligatoire</th>
</tr>
</thead>
<tbody>
<tr>
<td>idPP : [0..1] Identifiant</td>
<td>Identifiant national de la personne physique:<br />
** Pour les professionnels: N° RPPS ou ADELI<br />
** Pour les acteurs non professionnels de santé employés d’une structure
: l’identifiant est composé de l’identifiant principal de la structure
et de l’identifiant interne attribué par la structure<br />
** Pour les étudiants, l'identifiant est le numéro SIRIUS ou le numéro
Etudiant (identifiant ordinal dont les règles de génération sont propres
à chaque ordre).</td>
<td>Non</td>
</tr>
<tr>
<td>telecommunication : [0..*] Telecommunication</td>
<td>Adresse(s) de télécommunication du professionnel (numéro de
téléphone, adresse email, URL, etc.).</td>
<td>Non</td>
</tr>
<tr>
<td>adresse : [0..*] Adresse</td>
<td>Adresse(s) de correspondance du professionnel.</td>
<td>Non</td>
</tr>
</tbody>
</table>

<p style="text-align: center;">
Attributs de la classe "Professionnel"
</p>

###### Classe "AbonnePP"

| Nom | Description | Obligatoire |
|----|----|----|
| **identifiantAbonnePP : [0..1] Identifiant** | Identifiant de la physique (i.e. il peut s’agir du NIR pour la personne prise en charge). | Non |
| **typeAbonnePP : [0..1] Code** | Type de la personne physique abonnée (professionnel, personne prise en charge, patient, personne tierce, etc.). | Non |
| **addresse : [0..\*\] Addresse** | Point(s) de contact de la personne physique abonnée. | Non |
| **telecommunication: [1..\*\] telecommunication** | Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.). | Oui |

<p style="text-align: center;">
Attributs de la classe "AbonnePP"
</p>

###### Classe "AbonnePM"

| Nom | Description | Obligatoire |
|----|----|----|
| **identifiantAbonnePM : [0..1] Identifiant** | Identifiant de la personne morale. | Non |
| **typeAbonnePM : [0..1] Code** | Type de la personne morale abonnée. | Non |
| **addresse : [0..\*\] Addresse** | Point(s) de contact de la personne morale abonnée. | Non |
| **telecommunication: [1..\*\] telecommunication** | Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.). | Oui |
| **nom : [0..1] Texte** | Nom sous lequel la personne morale exerce son activité. | Non |

<p style="text-align: center;">
Attributs de la classe "AbonnePM"
</p>

###### Classe "EntiteJuridique"

<table style="width:96%;">
<colgroup>
<col style="width: 30%" />
<col style="width: 51%" />
<col style="width: 14%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;">Nom</th>
<th style="text-align: center;">Description</th>
<th style="text-align: center;">Obligatoire</th>
</tr>
</thead>
<tbody>
<tr>
<td>numFINESS : [0..1] Identifiant</td>
<td>Identifiant FINESS de l'entité juridique attribué lors de sa
création.<br />
Les personnes morales identifiées par des numéros FINESS sont également
dotées de numéros SIREN. Le numéro FINESS étant porteur intrinsèquement
de liens avec le domaine sanitaire ou le domaine médico-social, il est,
s'il existe, à privilégier pour l’identification de ces personnes
morales en tant qu’acteurs sanitaires et médico-sociaux (Référentiel
d’identification des acteurs sanitaires et médico-sociaux - Politique
Générale de Sécurité des Systèmes d’Information de Santé
(PGSSI-S)).</td>
<td>Non (L’attribut idEmetteur de la classe Emetteur peut être la même valeur du numéro FINESS de l’entité juridique)</td>
</tr>
<tr>
<td>addresseEJ : [0..*] Texte Addresse</td>
<td>Point(s) de contact.</td>
<td>Non</td>
</tr>
<tr>
<td>telecommunication [0..*] telecommunication</td>
<td>Adresse(s) de télécommunication (numéro de téléphone, adresse email,
URL, etc.).</td>
<td>Non</td>
</tr>
<tr>
<td>raisonSociale : [0..1] Texte</td>
<td>Nom de l’entité juridique.</td>
<td>Non</td>
</tr>
</tbody>
</table>

<p style="text-align: center;">
Attributs de la classe "EntiteJuridique"
</p>

###### Classe "Emetteur"

| Nom | Description | Obligatoire |
|----|----|----|
| idEmetteur : [1..1] Identifiant | Identifiant(s) de l’émetteur de l’évènement. | Oui |

<p style="text-align: center;">
Attributs de la classe "Emetteur"
</p>

##### Flux 2 – SuppressionAbonnement

Ci-dessous le diagramme de classe concernant le Flux 2-
SuppressionAbonnement. Les sous-sections suivantes donnent des
définitions aux attributs de chaque class identifiée.

<div class="figure" style="text-align: center;">
    <img src="SuppressionAbonnement.png"
    alt=" Diagramme de classe – SuppressionAbonnement"
    title="SuppressionAbonnement"
    style="width:7;height:auto;">

    <p>
    Diagramme de classe – SuppressionAbonnement
    </p>
</div>

###### Classe "SuppressionAbonnement"

| Nom | Description | Obligatoire |
|----|----|----|
| idAbonnement : [1..1] Identifiant | Identifiant unique de l’abonnement. | Oui |

<p style="text-align: center;">
Attributs de la classe "SuppressionAbonnement"
</p>

##### Flux 3 – EmissionEvenement

Ci-dessous le diagramme de classe concernant le Flux 3-
EmissionEvenement. Les sous-sections suivantes donnent des définitions
aux attributs de chaque class identifiée.

<div class="figure" style="text-align: center;">
    <img src="EmissionAbonnement.png"
    alt=" Diagramme de classe – EmissionAbonnement"
    title="EmissionAbonnement"
    style="width:10in;height:auto;">

    <p>
    Diagramme de classe - EmissionAbonnement
    </p>
</div>

###### Classe "Emetteur"

| Nom | Description | Obligatoire |
|----|----|----|
| idEmetteur : [1..1] Identifiant | Identifiant unique de l’émetteur. | Oui |

<p style="text-align: center;">
Attributs de la classe "Emetteur"
</p>

###### Classe "Evenement"

<table>
  <thead>
    <tr>
      <th>Nom</th>
      <th>Description</th>
      <th>Obligatoire</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>typeEvenement : [1..1] Code</td>
      <td>Type de l’évènement (dépôt de document, sortie d’hôpital, etc.).</td>
      <td>Oui</td>
    </tr>
    <tr>
      <td>description : [1..1] Texte</td>
      <td>Contenu de l’évènement.</td>
      <td>Oui</td>
    </tr>
    <tr>
      <td>occurence : [1..1] DateHeure</td>
      <td>Date et heure à laquelle l’évènement a eu lieu.</td>
      <td>Oui</td>
    </tr>
    <tr>
      <td>declaration : [0..1] DateHeure</td>
      <td>Date et heure de la transmission de l’évènement.</td>
      <td>Non (Cette information peut être générée automatiquement par le système et ne circule pas dans le flux.)</td>
    </tr>
  </tbody>
</table>

<p style="text-align: center;">
Attributs de la classe "Evènement"
</p>

###### Classe "PersonnePhysique"

<table style="width:98%;">
<colgroup>
<col style="width: 17%" />
<col style="width: 65%" />
<col style="width: 14%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;">Nom</th>
<th style="text-align: center;">Description</th>
<th style="text-align: center;">Obligatoire</th>
</tr>
</thead>
<tbody>
<tr>
<td>nomFamille : [0..1] Texte</td>
<td>Toute personne possède un nom de famille (appelé auparavant nom
patronymique). Ce nom figure sur l'acte de naissance. Il peut s'agir par
exemple du nom du père.<br />
Ref.: Service-public.fr<br />
Synonymes : nom patronymique, nom de naissance.</td>
<td>Non</td>
</tr>
<tr>
<td>prenomUsuel : [0..1] Texte</td>
<td>Le prénom usuel est un des prénoms inscrit dans l'acte de
naissance.</td>
<td>Non</td>
</tr>
</tbody>
</table>

<p style="text-align: center;">
Attributs de la classe "PersonnePhysique"
</p>

###### Classe "EntiteJuridique"

<table style="width:98%;">
<colgroup>
<col style="width: 30%" />
<col style="width: 53%" />
<col style="width: 14%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;">Nom</th>
<th style="text-align: center;">Description</th>
<th style="text-align: center;">Obligatoire</th>
</tr>
</thead>
<tbody>
<tr>
<td>numFINESS : [0..1] Identifiant</td>
<td>Identifiant FINESS de l'entité juridique attribué lors de sa
création.<br />
Les personnes morales identifiées par des numéros FINESS sont également
dotées de numéros SIREN. Le numéro FINESS étant porteur intrinsèquement
de liens avec le domaine sanitaire ou le domaine médico-social, il est,
s'il existe, à privilégier pour l’identification de ces personnes
morales en tant qu’acteurs sanitaires et médico-sociaux (Référentiel
d’identification des acteurs sanitaires et médico-sociaux - Politique
Générale de Sécurité des Systèmes d’Information de Santé
(PGSSI-S)).</td>
<td>Non (L’attribut idEmetteur de la classe Emetteur peut être la même valeur du numéro FINESS de l’entité juridique)</td>
</tr>
<tr>
<td>addresseEJ : [0..*] Texte Addresse</td>
<td>Point(s) de contact.</td>
<td>Non</td>
</tr>
<tr>
<td>telecommunication [0..*] telecommunication</td>
<td>Adresse(s) de télécommunication (numéro de téléphone, adresse email,
URL, etc.).</td>
<td>Non</td>
</tr>
<tr>
<td>raisonSociale : [0..1] Texte</td>
<td>Nom de l’entité juridique.</td>
<td>Non</td>
</tr>
</tbody>
</table>

<p style="text-align: center;">
Attributs de la classe "EntiteJuridique"
</p>

###### Classe "PersonnePriseEnCharge"

<table style="width:98%;">
<colgroup>
<col style="width: 29%" />
<col style="width: 55%" />
<col style="width: 12%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;">Nom</th>
<th style="text-align: center;">Description</th>
<th style="text-align: center;">Obligatoire</th>
</tr>
</thead>
<tbody>
<tr>
<td>idPersonnePriseEnCharge : [0..1] Identifiant</td>
<td>Identifiant(s) de la personne prise en charge.</td>
<td>Non</td>
</tr>
<tr>
<td>adresse : [0..*] Adresse</td>
<td>Adresse(s) de correspondance permettant de contacter la personne
prise en charge :<br />
- lorsque les structures ne sont pas identifiées : cas des remplaçants
ou des professionnels venant de s’inscrire mais non encore
installés;<br />
- hors de leurs lieux d’exercice, s’ils le souhaitent.<br />
Remarque : La première occurrence correspond aux coordonnées de
correspondance du RPPS.</td>
<td>Non</td>
</tr>
<tr>
<td>telecommunication : [0..*] Telecommunication</td>
<td>Adresse(s) de télécommunication de la personne prise en charge
(numéro de téléphone, adresse email, URL, etc.).</td>
<td>Non</td>
</tr>
</tbody>
</table>

<p style="text-align: center;">
Attributs de la classe "PersonnePriseEnCharge"
</p>

###### Classe "Professionnel"

<table style="width:98%;">
<colgroup>
<col style="width: 24%" />
<col style="width: 60%" />
<col style="width: 12%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;">Nom</th>
<th style="text-align: center;">Description</th>
<th style="text-align: center;">Obligatoire</th>
</tr>
</thead>
<tbody>
<tr>
<td>idPP : [0..1] Identifiant</td>
<td>Identifiant national de la personne physique:<br />
** Pour les professionnels: N° RPPS ou ADELI<br />
** Pour les acteurs non professionnels de santé employés d’une structure
: l’identifiant est composé de l’identifiant principal de la structure
et de l’identifiant interne attribué par la structure<br />
** Pour les étudiants, l'identifiant est le numéro SIRIUS ou le numéro
Etudiant (identifiant ordinal dont les règles de génération sont propres
à chaque ordre).</td>
<td>Non< (L’attribut idEmetteur de la classe Emetteur peut être la même valeur de l’identifiant du professionnel (NIR, INS-C, etc.).) </td>
</tr>
<tr>
<td>telecommunication : [0..*] Telecommunication</td>
<td>Adresse(s) de télécommunication du professionnel (numéro de
téléphone, adresse email, URL, etc.).</td>
<td>Non</td>
</tr>
<tr>
<td>adresse : [0..*] Adresse</td>
<td>Adresse(s) de correspondance du professionnel.</td>
<td>Non</td>
</tr>
</tbody>
</table>

<p style="text-align: center;">
Attributs de la classe "Professionnel"
</p>

##### Flux 4 – TransmissionOrdreNotification

Ci-dessous le diagramme de classe concernant le Flux
4-TransmissionOrdreNotification et le Flux 5- NotificationEvenement. Les
sous-sections suivantes donnent des définitions aux attributs de chaque
classe identifiée

<div class="figure" style="text-align: center;">
    <img src="TransmissionOrdreNotification.png"
    alt=" Diagramme de classe – TransmissionOrdreNotification"
    title="TransmissionOrdreNotification"
    style="width:10in;height:auto;">

    <p>
    Diagramme de classe – TransmissionOrdreNotification
    </p>
</div>

###### Classe "Abonne"

| Nom | Description | Obligatoire |
|----|----|----|
| idAbonne : [1..1] Identifiant | Identifiant unique de l’abonné. | Oui |

<p style="text-align: center;">
Attributs de la classe "Abonné"
</p>

###### Classe "Evenement"

<table>
  <thead>
    <tr>
      <th>Nom</th>
      <th>Description</th>
      <th>Obligatoire</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>typeEvenement : [1..1] Code</td>
      <td>Type de l’évènement (dépôt de document, sortie d’hôpital, etc.).</td>
      <td>Oui</td>
    </tr>
    <tr>
      <td>description : [1..1] Texte</td>
      <td>Contenu de l’évènement.</td>
      <td>Oui</td>
    </tr>
    <tr>
      <td>occurrence : [0..1] DateHeure</td>
      <td>Date à laquelle l’évènement a eu lieu.</td>
      <td>Non</td>
    </tr>
    <tr>
      <td>declaration : [0..1] DateHeure</td>
      <td>Date et heure de la transmission de l’évènement.</td>
      <td>Non (Cette information peut être générée automatiquement par le système et ne circule pas dans le flux.)</td>
    </tr>
  </tbody>
</table>

<p style="text-align: center;">
Attributs de la classe "Evènement"
</p>

###### Classe "PersonnePhysique"

<table style="width:98%;">
<colgroup>
<col style="width: 20%" />
<col style="width: 65%" />
<col style="width: 12%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;">Nom</th>
<th style="text-align: center;">Description</th>
<th style="text-align: center;">Obligatoire</th>
</tr>
</thead>
<tbody>
<tr>
<td>nomFamille : [0..1] Texte</td>
<td>Toute personne possède un nom de famille (appelé auparavant nom
patronymique). Ce nom figure sur l'acte de naissance. Il peut s'agir par
exemple du nom du père.<br />
Ref.: Service-public.fr<br />
Synonymes : nom patronymique, nom de naissance.</td>
<td>Non</td>
</tr>
<tr>
<td>prenomUsuel : [0..1] Texte</td>
<td>Le prénom usuel est un des prénoms inscrit dans l'acte de
naissance.</td>
<td>Non</td>
</tr>
</tbody>
</table>

<p style="text-align: center;">
Attributs de la classe "PersonnePhysique"
</p>

###### Classe "Professionnel"

<table style="width:98%;">
<colgroup>
<col style="width: 29%" />
<col style="width: 55%" />
<col style="width: 12%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;">Nom</th>
<th style="text-align: center;">Description</th>
<th style="text-align: center;">Obligatoire</th>
</tr>
</thead>
<tbody>
<tr>
<td>idPP : [0..1] Identifiant</td>
<td>Identifiant national de la personne physique:<br />
** Pour les professionnels: N° RPPS ou ADELI<br />
** Pour les acteurs non professionnels de santé employés d’une structure
: l’identifiant est composé de l’identifiant principal de la structure
et de l’identifiant interne attribué par la structure<br />
** Pour les étudiants, l'identifiant est le numéro SIRIUS ou le numéro
Etudiant (identifiant ordinal dont les règles de génération sont propres
à chaque ordre).</td>
<td>Non (L’attribut idEmetteur de la classe Emetteur peut être la même valeur de l’identifiant du professionnel (NIR, INS-C, etc.).)</td>
</tr>
<tr>
<td>telecommunication : [0..*] Telecommunication</td>
<td>Adresse(s) de télécommunication du professionnel (numéro de
téléphone, adresse email, URL, etc.).</td>
<td>Non</td>
</tr>
</tbody>
</table>

<p style="text-align: center;">
Attributs de la classe "Professionnel"
</p>

###### Classe "Abonnement"

| Nom | Description | Obligatoire |
|----|----|----|
| idAbonnement : [1..1] Identifiant | Identifiant unique de l’abonnement. | Oui |
| mediaNotification : [1..1] Code | Media de diffusion de la notification (sms, mail, etc.). | Oui |

<p style="text-align: center;">
Attributs de la classe "Abonnement"
</p>

###### Classe "PersonnePriseEnCharge"

<table>
  <thead>
    <tr>
      <th>Nom</th>
      <th>Description</th>
      <th>Obligatoire</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>idPersonnePriseEnCharge : [0..1] Identifiant</td>
      <td>Identifiant(s) de la personne prise en charge (identifiants de santé, identifiants locaux, etc.).</td>
      <td>Non (Si la personne prise en charge est un patient, ce champ contiendra l’identifiant du patient.)</td>
    </tr>
    <tr>
      <td>telecommunication : [0..*] Telecommunication</td>
      <td>Adresse(s) de télécommunication de la personne prise en charge qui est abonnée aux notifications (numéro de téléphone, adresse email, URL, etc.).</td>
      <td>Non</td>
    </tr>
  </tbody>
</table>

<p style="text-align: center;">
Attributs de la classe "PersonnePriseEnCharge"
</p>

###### Classe "EntiteJuridique"

<table style="width:98%;">
<colgroup>
<col style="width: 31%" />
<col style="width: 50%" />
<col style="width: 15%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;">Nom</th>
<th style="text-align: center;">Description</th>
<th style="text-align: center;">Obligatoire</th>
</tr>
</thead>
<tbody>
<tr>
<td>numFINESS : [0..1] Identifiant</td>
<td>Identifiant FINESS de l'entité juridique attribué lors de sa
création.<br />
Les personnes morales identifiées par des numéros FINESS sont également
dotées de numéros SIREN. Le numéro FINESS étant porteur intrinsèquement
de liens avec le domaine sanitaire ou le domaine médico-social, il est,
s'il existe, à privilégier pour l’identification de ces personnes
morales en tant qu’acteurs sanitaires et médico-sociaux (Référentiel
d’identification des acteurs sanitaires et médico-sociaux - Politique
Générale de Sécurité des Systèmes d’Information de Santé
(PGSSI-S)).</td>
<td>Non (L’attribut idEmetteur de la classe Emetteur peut être la même valeur du numéro FINESS de l’entité juridique (personne morale))</td>
</tr>
<tr>
<td>telecommunication [0..*] telecommunication</td>
<td>Adresse(s) de télécommunication (numéro de téléphone, adresse email,
URL, etc.).</td>
<td>Non</td>
</tr>
<tr>
<td>raisonSociale : [0..1] Texte</td>
<td>Nom de l’entité juridique.</td>
<td>Non</td>
</tr>
</tbody>
</table>

<p style="text-align: center;">
Attributs de la classe "EntiteJuridique"
</p>

###### Classe "Emetteur"

| Nom | Description | Obligatoire |
|----|----|----|
| idEmetteur : [0..1] Identifiant | Identifiant(s) de l’émetteur de l’évènement. | Non |
| dateDeclaration : [0..1] DateHeure | Date et heure de la transmission de l’évènement. | Non |

<p style="text-align: center;">
Attributs de la classe "Emetteur"
</p>


###### Classe "AbonnePP"

| Nom | Description | Obligatoire |
|----|----|----|
| **identifiantAbonnePP : [0..1] Identifiant** | Identifiant de la personne physique (il peut s’agir du NIR, par exemple, pour la personne prise en charge). | Non |
| **typeAbonnePP : [0..1] Code** | Type de la personne physique abonnée (professionnel, personne prise en charge, personne tierce, etc.). | Non |
| **telecommunication: [1..\*\] telecommunication** | Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.). | Oui |

<p style="text-align: center;">
Attributs de la classe "AbonnePP"
</p>

###### Classe "AbonnePM"

| Nom | Description | Obligatoire |
|----|----|----|
| **identifiantAbonnePM : [0..1] Identifiant** | Identifiant de la personne morale. | Non |
| **typeAbonnePM : [0..1] Code** | Type de la personne morale abonnée. | Non |
| **telecommunication: [1..\*\] telecommunication** | Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.). | Oui |
| **nom : [0..1] Texte** | Nom sous lequel la personne morale exerce son activité. | Non |

<p style="text-align: center;">
Attributs de la classe "AbonnePM"
</p>

##### Flux 5 – NotificationEvenement

Ce flux est modélisé par le même modèle hiérarchique du Flux 3 –
TransmissionOrdreNotification étant donné qu’ils peuvent contenir les
mêmes informations métier.
