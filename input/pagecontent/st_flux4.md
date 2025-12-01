### Correspondances entre objets métier et ressources du standard HL7 FHIR

Dans cette section, une mise en correspondance est faite entre les
objets identifiés à l’issue de l’étude métier de la notification
d’évènements \[1\] et les ressources et éléments du standard HL7 FHIR.

Les sections qui suivent détaillent la mise en correspondance des
informations métier \[1\] contenues dans les flux de la Table 2 avec les
éléments des ressources[^4] FHIR correspondantes. Pour les attributs qui
ne sont pas définis dans les ressources FHIR, des extensions (marquées
par « *extension* ») sont définies.

Le **Flux 4 – TransmissionOrdreNotification** contient les informations constituant la consolidation des
informations nécessaires à la transmission d’un ordre de
notification[^6].

<table>
<caption><p>Tableau 6 Mise en correspondance pour le flux 4:
TransmissionOrdreNotification</p></caption>
<colgroup>
<col style="width: 21%" />
<col style="width: 26%" />
<col style="width: 27%" />
<col style="width: 24%" />
</colgroup>
<thead>
<tr>
<th colspan="2"> Eléments métier</th>
<th colspan="2">Eléments FHIR</th>
</tr>
<tr>
<th>Nom Objet</th>
<th>Nom attribut</th>
<th>Ressource</th>
<th>Elément</th>
</tr>
</thead>
<tbody>
<tr>
<td rowspan="2">Abonnement [1..1]</td>
<td>idAbonnement : [1..1] Identifiant</td>
<td><strong>CommunicationRequest</strong></td>
<td>basedOn [0..*] Reference</td>
</tr>
<tr>
<td>mediaDiffusion : [1..1] Code</td>
<td><strong>CommunicationRequest</strong></td>
<td><p>medium [0..*] CodeableConcept</p>
<p><em>Extension (RecipientEndpoint)<br />
</em></p></td>
</tr>
<tr>
<td rowspan="2">PersonnePriseEnCharge [0..1]</td>
<td>idPersonnePriseEnCharge : [0..1] Identifiant</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td>identifier : Identifier [0..*]</td>
</tr>
<tr>
<td>telecommunication : [0..*] Telecommunication</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td>telecom : FrContactPoint [0..*]</td>
</tr>
<tr>
<td rowspan="2">PersonnePhysique [1..1]</td>
<td>nomFamille : [0..1] Texte</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td><p>name[1..*].family : string [0..1] (FrHumanName)</p>
<p>Slice « usualName », Patient.name.use prenant la valeur « usual
»</p></td>
</tr>
<tr>
<td>prenomUsuel: [0..1] Texte</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td><p>name[1..*].given : string [0..*] (FrHumanName)</p>
<p>Slice « usualName », Patient.name.use prenant la valeur «usual
»</p></td>
</tr>
<tr>
<td rowspan="2">Professionnel [0..1]</td>
<td>idPP : [0..1] Identifiant</td>
<td><p><strong>Practitioner</strong></p>
<p><em>FrPractitioner</em></p></td>
<td>identifier : Identifier [0..*]</td>
</tr>
<tr>
<td>telecommunication : [0..*] Telecommunication</td>
<td><p><strong>Practitioner</strong></p>
<p><em>FrPractitioner</em></p></td>
<td>telecom : FrContactPoint [0..*]</td>
</tr>
<tr>
<td rowspan="2">PersonnePhysique [0..1]</td>
<td>nomFamille : [0..1] Texte</td>
<td><p><strong>Practitioner</strong></p>
<p><em>FrPractitioner</em></p></td>
<td><p>name[0..*].family : string [0..1]</p>
<p>(FrHumanName)</p></td>
</tr>
<tr>
<td>prenomUsuel: [0..1] Texte</td>
<td><p><strong>Practitioner</strong></p>
<p><em>FrPractitioner</em></p></td>
<td><p>name[0..*].given : string [0..*]</p>
<p>(FrHumanName)</p></td>
</tr>
<tr>
<td rowspan="3">EntiteJuridique [0..1]</td>
<td>numFINESS : [0..1] Identifiant</td>
<td><p><strong>Organization</strong></p>
<p><em>FrOrganization</em></p></td>
<td>identifier : Identifier [0..*]</td>
</tr>
<tr>
<td>telecommunication: [0..*] telecommunication</td>
<td><p><strong>Organization</strong></p>
<p><em>FrOrganization</em></p></td>
<td>telecom : FrContactPoint [0..*]</td>
</tr>
<tr>
<td>raisonSociale : [0..1] Texte</td>
<td><p><strong>Organization</strong></p>
<p><em>FrOrganization</em></p></td>
<td>name : string [0..1]</td>
</tr>
<tr>
<td>Emetteur [0..1]</td>
<td>idEmetteur : [1..1] Identifiant</td>
<td><p><strong>Practitioner</strong></p>
<p><em>FrPractitioner</em></p>
<p>ou</p>
<p><strong>Organization</strong></p>
<p><em>FrOrganization</em></p></td>
<td>identifier : Identifier [0..*]</td>
</tr>
<tr>
<td rowspan="4">Evènement [0..1]</td>
<td>typeEvenement : [0..1] Code</td>
<td><strong>CommunicationRequest</strong></td>
<td><p><em>Extension (EventType)</em></p>
<p>JDV_J46-TypeEvenementNotification-CI-SIS</p></td>
</tr>
<tr>
<td>description [1..1] Texte</td>
<td><strong>CommunicationRequest</strong></td>
<td><p>payload.contentString : string [1..1]</p>
<p>Cet élément doit être de type string pour ne contenir qu’une
description de l’évènement formulée par l’émetteur de l’évènement ou par
le gestionnaire d’abonnements si nécessaire. Il ne doit pas contenir de
flux métier encapsulé.</p></td>
</tr>
<tr>
<td>occurence [0..1] DateHeure</td>
<td><strong>CommunicationRequest</strong></td>
<td><em>Extension (EventTime)</em></td>
</tr>
<tr>
<td>declaration [0..1] DateHeure</td>
<td><strong>CommunicationRequest</strong></td>
<td><em>Extension (EventEmissionTime)</em></td>
</tr>
<tr>
<td>Abonné [1..1]</td>
<td>idAbonne : [1..1] Identifiant</td>
<td><strong>CommunicationRequest</strong></td>
<td>Recipient : Reference [0..*]</td>
</tr>
<tr>
<td rowspan="3">AbonnePP [0..1]</td>
<td>idAbonnePP : [0..1] Identifiant</td>
<td rowspan="3"><p><strong>Practitioner</strong></p>
<p><em>FrPractitioner</em></p>
<p>Ou</p>
<p><strong>Patient</strong></p>
<p><em>FrPatient</em></p>
<p>Ou</p>
<p><strong>RelatedPerson</strong></p>
<p><em>FrRelatedPerson</em></p></td>
<td>identifier : Identifier [0..*]<a href="#fn1" class="footnote-ref"
id="fnref1" role="doc-noteref"><sup>1</sup></a></td>
</tr>
<tr>
<td>telecommunication : [1..*] Telecommunication</td>
<td>telecom : FrContactPoint [0..*]</td>
</tr>
<tr>
<td>TypeAbonnePP : [0..1] Type</td>
<td>Pas de mise en correspondance pour cet attribut qui, d’un point de
vue métier, permet d’identifier le type d’abonné. On retrouve cette
information au niveau du type de la ressource qui représente
l’abonné.</td>
</tr>
<tr>
<td rowspan="2">PersonnePhysique [1..1]</td>
<td>nomFamille : [0..1] Texte</td>
<td><p><strong>Practitioner</strong></p>
<p><em>FrPractitioner</em></p></td>
<td><p>name[0..*].family : string [0..1]</p>
<p>(FrHumanName)</p></td>
</tr>
<tr>
<td>prenomUsuel: [0..1] Texte</td>
<td><p><strong>Practitioner</strong></p>
<p><em>FrPractitioner</em></p></td>
<td><p>name[0..*].given : string [0..*]</p>
<p>(FrHumanName)</p></td>
</tr>
<tr>
<td rowspan="4">AbonnePM [0..1]</td>
<td>identifiantAbonnePM : [0..1] Identifiant</td>
<td><p><strong>Organization</strong></p>
<p><em>FrOrganization</em></p></td>
<td>identifier : Identifier [0..*]</td>
</tr>
<tr>
<td>telecommunication: [1..*] telecommunication</td>
<td><p><strong>Organization</strong></p>
<p><em>FrOrganization</em></p></td>
<td>telecom : FrContactPoint [0..*]</td>
</tr>
<tr>
<td>nom : [0..1] Texte</td>
<td><p><strong>Organization</strong></p>
<p><em>FrOrganization</em></p></td>
<td>name : string [0..1]</td>
</tr>
<tr>
<td>typeAbonnePM : [0..1] Code</td>
<td><p><strong>Organization</strong></p>
<p><em>FrOrganization</em></p></td>
<td><p>type : CodeableConcept [0..*]</p>
<p>Slice : organizationType : CodeableConcept [0..1]</p></td>
</tr>
</tbody>
</table>
<section id="footnotes" class="footnotes footnotes-end-of-document"
role="doc-endnotes">
<hr />
<ol>
<li id="fn1"><p>Sauf pour FrRelatedPerson : identifier : Identifier
[1..1]<a href="#fnref1" class="footnote-back"
role="doc-backlink">↩︎</a></p></li>
</ol>
</section>

### Contenu FHIR des flux structurés

#### Ressource « CommunicationRequest »

Le tableau suivant liste les attributs de la ressource
« CommunicationRequest » qui sont utilisés par le Flux
4-TransmissionOrdreNotification. Cette spécification technique introduit
ainsi un nouveau profil pour la ressource CommunicationRequest :
NdE_NotificationRequestNdE.

<table style="width:100%;">
<caption><p>Tableau 12 Liste des attributs de la ressource
CommunicationRequest dans le contexte du flux 4</p></caption>
<colgroup>
<col style="width: 22%" />
<col style="width: 22%" />
<col style="width: 29%" />
<col style="width: 26%" />
</colgroup>
<thead>
<tr>
<th>Elément</th>
<th>Type et cardinalité</th>
<th>Contraintes</th>
<th>Commentaires</th>
</tr>
</thead>
<tbody>
<tr>
<td>contained</td>
<td>Resource [0..*]</td>
<td>Cardinalité contrainte à [1..*]</td>
<td>Les ressources référencées par les attributs de la ressource
CommunicationRequest doivent être présentes dans cet élément.</td>
</tr>
<tr>
<td><em>NdE_EventTime</em></td>
<td><p>Extension du volet NdE</p>
<p>dateTime [0..1]</p></td>
<td></td>
<td>Date à laquelle l’évènement a eu lieu (occurrence dans l’étude
métier [1])</td>
</tr>
<tr>
<td><em>NdE_EventType</em></td>
<td><p>Extension du volet NdE</p>
<p>CodeableConcept [1..1]</p></td>
<td></td>
<td>Cette information identifie le type d’évènement qui est lié à un
abonnement particulier (i.e : dépôt de document, sortie d’hôpital,
etc.).</td>
</tr>
<tr>
<td><em>NdE_EventEmissionTime</em></td>
<td><p>Extension du volet NdE</p>
<p>dateTime [0..1]</p></td>
<td></td>
<td>Cette information identifie la date l’heure de l’émission d’un
évènement (i.e : dépôt de document, sortie d’hôpital, etc.)</td>
</tr>
<tr>
<td><em>NdE_RecipientEndpoint</em></td>
<td><p>Extension du volet NdE</p>
<p>url [1..1]</p></td>
<td></td>
<td>Extension de l’élément recipient. Cette information contient les
données nécessaires pour contacter l’abonné. Correspond à la valeur de
l’élément Channel.endpoint de la ressource Subscription représentant
l’abonnement.</td>
</tr>
<tr>
<td>identifier</td>
<td>Identifier [0..1]</td>
<td></td>
<td></td>
</tr>
<tr>
<td>basedOn</td>
<td>Reference [0..*] (Any)</td>
<td><p>Cardinalité contrainte à [1..1]</p>
<p>Type de la référence contrainte à Subscription et au profil
NdE_SubscriptionNdE</p></td>
<td>Référence à l’abonnement qui a déclenché l’ordre d’envoi de
notification</td>
</tr>
<tr>
<td>replaces</td>
<td>Reference [0..*] (CommunicationRequest)</td>
<td></td>
<td></td>
</tr>
<tr>
<td>groupIdentifier</td>
<td>Identifier [0..1]</td>
<td></td>
<td></td>
</tr>
<tr>
<td>status</td>
<td><p>code [1..1]</p>
<p>http://hl7.org/fhir/valueset-request-status.html</p></td>
<td></td>
<td><p>Le statut de l’émission de l’évènement</p>
<p>Valeur par défaut : active</p></td>
</tr>
<tr>
<td>statusReason</td>
<td>CodeableConcept [0..1]</td>
<td></td>
<td></td>
</tr>
<tr>
<td>category</td>
<td>CodeableConcept [0..*]</td>
<td></td>
<td></td>
</tr>
<tr>
<td>priority</td>
<td>code [0..1]</td>
<td></td>
<td></td>
</tr>
<tr>
<td>doNotPerform</td>
<td>boolean [0..1]</td>
<td></td>
<td></td>
</tr>
<tr>
<td>medium</td>
<td>CodeableConcept [0..*]</td>
<td>Cardinalité contrainte à [1..1]</td>
<td>mediaDiffusion dans l’étude métier</td>
</tr>
<tr>
<td>subject</td>
<td>Reference [0..1] (Patient | Group)</td>
<td><p>Cardinalité contrainte à [1..1]</p>
<p>Type de la référence limité à Patient (profil FrPatient)</p>
<p>La ressource référencée doit être présente sous l’élément
CommunicationRequest.contained</p></td>
<td></td>
</tr>
<tr>
<td>about</td>
<td>Reference [0..*] (Any)</td>
<td></td>
<td></td>
</tr>
<tr>
<td>encounter</td>
<td>Reference [0..1] (Encounter)</td>
<td></td>
<td></td>
</tr>
<tr>
<td>payload</td>
<td>BackboneElement [0..*]</td>
<td>Cardinalité contrainte à [1..1]</td>
<td></td>
</tr>
<tr>
<td>payload.content[x]</td>
<td>string or Attachment or Reference [1..1]</td>
<td>De type string</td>
<td>Cet élément doit être de type string pour ne contenir qu’une
description de l’évènement formulée par l’émetteur de l’évènement ou par
le gestionnaire d’abonnements si nécessaire. Il ne doit pas contenir de
flux métier encapsulé.</td>
</tr>
<tr>
<td>occurrence[x]</td>
<td>dateTime or Period [0..1]</td>
<td></td>
<td></td>
</tr>
<tr>
<td>authoredOn</td>
<td>dateTime [0..1]</td>
<td></td>
<td></td>
</tr>
<tr>
<td>requester</td>
<td><p>Reference [0..1]</p>
<p>(<a
href="https://hl7.org/FHIR/healthcareservice.html">Practitioner</a> | <a
href="https://hl7.org/FHIR/practitionerrole.html">PractitionerRole</a> |
<a href="https://hl7.org/FHIR/patient.html">Organization</a> | <a
href="https://hl7.org/FHIR/patient.html">Patient</a> | <a
href="https://hl7.org/FHIR/device.html">RelatedPerson</a> | <a
href="https://hl7.org/FHIR/practitioner.html">Device</a>)</p></td>
<td><p>Type de la référence limité à Practitioner (profil
FrPractitioner) et Organization (profil FrOrganization)</p>
<p>La ressource référencée doit être présente sous l’élément
CommunicationRequest.contained</p></td>
<td>Emetteur de l’évènement.</td>
</tr>
<tr>
<td>recipient</td>
<td><p>Reference [0..*]</p>
<p>(<a href="https://hl7.org/FHIR/group.html">Device</a> | <a
href="https://hl7.org/FHIR/relatedperson.html">Organization</a> | <a
href="https://hl7.org/FHIR/device.html">Patient</a> | <a
href="https://hl7.org/FHIR/device.html">Practitioner</a> | <a
href="https://hl7.org/FHIR/organization.html">PractitionerRole</a> | <a
href="https://hl7.org/FHIR/relatedperson.html">RelatedPerson</a> | <a
href="https://hl7.org/FHIR/careteam.html">Group</a> | <a
href="https://hl7.org/FHIR/practitioner.html">CareTeam</a> | <a
href="https://hl7.org/FHIR/practitioner.html">HealthcareService</a>)</p></td>
<td><p>Cardinalité contrainte à [1..1]</p>
<p>Type de la référence limité à Practitioner (profil FrPractitioner),
Patient (profil FrPatient), Organization (profil FrOrganization) et
RelatedPerson (profil FrRelatedPerson)</p>
<p>La ressource référencée doit être présente sous l’élément
CommunicationRequest.contained</p></td>
<td></td>
</tr>
<tr>
<td>sender</td>
<td><p>Reference [0..1]</p>
<p>(<a href="https://hl7.org/FHIR/relatedperson.html">Device</a> | <a
href="https://hl7.org/FHIR/practitioner.html">Organization</a> | <a
href="https://hl7.org/FHIR/practitioner.html">Patient</a> | <a
href="https://hl7.org/FHIR/device.html">Practitioner</a> | <a
href="https://hl7.org/FHIR/patient.html">PractitionerRole</a> | <a
href="https://hl7.org/FHIR/group.html">RelatedPerson</a> | <a
href="https://hl7.org/FHIR/patient.html">HealthcareService</a>)</p></td>
<td></td>
<td></td>
</tr>
<tr>
<td>reasonCode</td>
<td>CodeableConcept [0..*]</td>
<td></td>
<td></td>
</tr>
<tr>
<td>reasonReference</td>
<td>Reference [0..*]</td>
<td></td>
<td></td>
</tr>
<tr>
<td>note</td>
<td>Annotation [0..*]</td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

Cette spécification technique introduit plusieurs extensions applicables
à la ressource FHIR et décrites dans le tableau ci-dessous.

<table>
<caption><p>Tableau 13 Liste des extensions applicables à la ressource
CommunicationRequest dans le contexte du flux 4</p></caption>
<colgroup>
<col style="width: 23%" />
<col style="width: 13%" />
<col style="width: 23%" />
<col style="width: 39%" />
</colgroup>
<thead>
<tr>
<th>Nom</th>
<th>Cardinalité</th>
<th>Type</th>
<th>Description et contraintes</th>
</tr>
</thead>
<tbody>
<tr>
<td>NdE_EventTime</td>
<td>[0..1]</td>
<td>dateTime</td>
<td><p>Id : event-time</p>
<p>url :
http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/eventTime</p>
<p>Date à laquelle l’évènement a eu lieu (occurrence dans l’étude métier
[1])</p></td>
</tr>
<tr>
<td>NdE_EventType</td>
<td>[1..1]</td>
<td>CodeableConcept</td>
<td><p>id : event-type</p>
<p>url :
http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/EventType</p>
<p>Cette information identifie le type d’évènement qui est lié à un
abonnement particulier (i.e : dépôt de document, sortie d’hôpital,
etc.).</p></td>
</tr>
<tr>
<td>NdE_EventEmissionTime</td>
<td>[0..1]</td>
<td>dateTime</td>
<td><p>id : event-emission-time</p>
<p>url :
http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/EventEmissionTime</p>
<p>Cette information identifie la date l’heure de l’émission d’un
évènement (i.e : dépôt de document, sortie d’hôpital, etc.)</p></td>
</tr>
<tr>
<td>NdE_RecipientEndpoint</td>
<td>[1..1]</td>
<td>url</td>
<td><p>id : recipient-endpoint</p>
<p>url : <a
href="https://hl7.org/FHIR/practitionerrole.html">http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/RecipientEndpoint</a></p>
<p>Extension de l’élément recipient. Cette information contient les
données nécessaires pour contacter l’abonné. Correspond à la valeur de
l’élément Channel.endpoint de la ressource Subscription représentant
l’abonnement.</p></td>
</tr>
</tbody>
</table>

### Construction des flux

Le **Flux 4 – TransmissionOrdreNotification** contient les informations nécessaires au gestionnaire de
notifications pour émettre une notification à l’abonné.

La première étape de la construction du flux 4 de transmission d’un
ordre de notification consiste à organiser son contenu. Le corps de la
requête HTTP est constitué de la ressource « CommunicationRequest »
(profil NotificationRequestNdE) contenant les ressources suivantes
(utilisation de l’élément **contained**):

La ressource référencée comme sujet de l’évènement par l’élément
subject : la ressource « Patient » utilisant le profil français
FrPatient

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

POST \[base\]/CommunicationRequest

Où \[base\] est l’endpoint FHIR mis à disposition par le gestionnaire de
notifications.

Si la transmission d’ordre de notification est correctement effectuée,
le système Gestionnaire d’évènements doit retourner un code « 201
created » avec, dans le corps de la réponse, la ressource
« CommunicationRequest ».

En cas d’erreur, le Gestionnaire de notifications doit répondre avec les
codes HTTP appropriés tels que définis par l’API REST FHIR et renvoyer
une ressource de type OperationOutcome dans le corps de la réponse.
