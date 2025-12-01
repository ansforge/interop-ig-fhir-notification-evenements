### Correspondances entre objets métier et ressources du standard HL7 FHIR

Dans cette section, une mise en correspondance est faite entre les
objets identifiés à l’issue de l’étude métier de la notification
d’évènements \[1\] et les ressources et éléments du standard HL7 FHIR.

Les sections qui suivent détaillent la mise en correspondance des
informations métier \[1\] contenues dans les flux de la Table 2 avec les
éléments des ressources[^4] FHIR correspondantes. Pour les attributs qui
ne sont pas définis dans les ressources FHIR, des extensions (marquées
par « *extension* ») sont définies.

Le **Flux 3 – EmissionEvenement** contient les informations nécessaires pour
transmettre un évènement à un système d’information ou à un composant
d’un système d’information (gestionnaire d’abonnements). Un évènement
peut être un dépôt de documents, une sortie d’hôpital, etc.

<table style="width:100%;">
<caption><p>Tableau 5 Mise en correspondance pour le flux 3 :
EmissionEvenement</p></caption>
<colgroup>
<col style="width: 21%" />
<col style="width: 24%" />
<col style="width: 22%" />
<col style="width: 31%" />
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
<td rowspan="4">Evènement [1..1]</td>
<td>typeEvenement : [1..1] Code</td>
<td><strong>CommunicationRequest</strong></td>
<td><p><em>Extension (EventType)</em></p>
<p>JDV_J46-TypeEvenementNotification-CI-SIS</p></td>
</tr>
<tr>
<td>description : [1..1] Texte</td>
<td><strong>CommunicationRequest</strong></td>
<td><p>payload.content[x]: [1..1]</p>
<ul>
<li><p>de type string s’il s’agit d’une description textuelle de
l’évènement</p></li>
<li><p>de type Attachment s’il s’agit d’un flux métier encapsulé
représentant un évènement (flux ITI42-RQ encapsulé si l’évènement est un
dépôt de document par exemple)</p></li>
</ul></td>
</tr>
<tr>
<td>occurrence : [1..1] DateHeure</td>
<td><strong>CommunicationRequest</strong></td>
<td><em>Extension (EventTime)</em></td>
</tr>
<tr>
<td>declaration : [0..1] DateHeure</td>
<td><strong>CommunicationRequest</strong></td>
<td>authoredOn: dateTime [0..1]</td>
</tr>
<tr>
<td rowspan="3">PersonnePriseEnCharge [1..1]</td>
<td>idPersonnePriseEnCharge : [0..1] Identifiant</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td>identifier : Identifier [0..*]</td>
</tr>
<tr>
<td>adresse : [0..*] Adresse</td>
<td><p><strong>Patient</strong></p>
<p><em>FrPatient</em></p></td>
<td>address : FrAddress [0..*]</td>
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
<td rowspan="3">Professionnel</td>
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
<td>adresse : [0..*] Adresse</td>
<td><p><strong>Practitioner</strong></p>
<p><em>FrPractitioner</em></p></td>
<td>address : FrAddress [0..*]</td>
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
<td rowspan="4">EntiteJuridique</td>
<td>numFINESS : [0..1] Identifiant</td>
<td><p><strong>Organization</strong></p>
<p><em>FrOrganization</em></p></td>
<td>identifier : Identifier [0..*]</td>
</tr>
<tr>
<td>addresseEJ : [0..*] Addresse</td>
<td><p><strong>Organization</strong></p>
<p><em>FrOrganization</em></p></td>
<td>address : FrAddress [0..*]</td>
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
<td>Emetteur [1..1]</td>
<td>idEmetteur : [1..1] Identifiant</td>
<td><strong>CommunicationRequest</strong></td>
<td>requester : Reference [0..1]</td>
</tr>
</tbody>
</table>

### Contenu FHIR des flux structurés

#### Ressource « CommunicationRequest »

Le tableau ci-après liste les attributs de la ressource
« CommunicationRequest » utilisés par le Flux 3- EmissionEvenement.
Cette spécification technique introduit ainsi un nouveau profil pour la
ressource CommunicationRequest : NdE_EventDeclarationNdE.

<table style="width:100%;">
<caption><p>Tableau 9 Liste des attributs de la ressource
CommunicationRequest dans le cas du flux 3</p></caption>
<colgroup>
<col style="width: 16%" />
<col style="width: 24%" />
<col style="width: 29%" />
<col style="width: 29%" />
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
<td>identifier</td>
<td>Identifier [0..*]</td>
<td></td>
<td></td>
</tr>
<tr>
<td><em>NdE_EventTime</em></td>
<td><p>Extension du volet NdE</p>
<p>dateTime [1..1]</p></td>
<td></td>
<td>Date à laquelle l’évènement a eu lieu (occurrence dans l’étude
métier [1])</td>
</tr>
<tr>
<td><em>NdE_EventType</em></td>
<td><p>Extension du volet NdE</p>
<p>CodeableConcept [1..1]</p></td>
<td></td>
<td><p>Cette information identifie le type d’évènement qui est lié à un
abonnement particulier (i.e : dépôt de document, sortie d’hôpital,
etc.).</p>
<p>Nomenclature à utiliser :
JDV_J46-TypeEvenementNotification-CI-SIS</p></td>
</tr>
<tr>
<td>basedOn</td>
<td>Reference [0..*] (Any)</td>
<td></td>
<td></td>
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
<td></td>
<td></td>
</tr>
<tr>
<td>subject</td>
<td>Reference [0..1] (Patient|Group)</td>
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
<td>Types possible : string ou Attachment</td>
<td><ul>
<li><p>de type string s’il s’agit d’une description textuelle de
l’évènement</p></li>
<li><p>de type Attachment s’il s’agit d’un flux métier encapsulé
représentant un évènement (flux ITI42-RQ encapsulé si l’évènement est un
dépôt de document par exemple)</p></li>
</ul></td>
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
<td>Date à laquelle l’évènement a été émis (« déclaration » dans l’étude
métier [1])</td>
</tr>
<tr>
<td>requester</td>
<td><p>Reference [0..1]</p>
<p>(<a
href="https://hl7.org/FHIR/healthcareservice.html">Practitioner</a> | <a
href="https://hl7.org/FHIR/practitionerrole.html">PractitionerRole</a> |
<a href="https://hl7.org/FHIR/relatedperson.html">Organization</a> | <a
href="https://hl7.org/FHIR/patient.html">Patient</a> | <a
href="https://hl7.org/FHIR/careteam.html">RelatedPerson</a> | <a
href="http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/RecipientEndpoint">Device</a>)</p></td>
<td><p>Cardinalité contrainte à [1..1]</p>
<p>Type de la référence limité à Practitioner (profil FrPractitioner) et
Organization (profil FrOrganization)</p>
<p>La ressource référencée doit être présente sous l’élément
CommunicationRequest.contained</p></td>
<td>Emetteur de l’évènement.</td>
</tr>
<tr>
<td>recipient</td>
<td><p>Reference [0..*]</p>
<p>(<a href="https://hl7.org/FHIR/practitionerrole.html">Device</a> | <a
href="https://hl7.org/FHIR/device.html">Organization</a> | <a
href="https://hl7.org/FHIR/healthcareservice.html">Patient</a> | <a
href="https://hl7.org/FHIR/device.html">Practitioner</a> | <a
href="https://hl7.org/FHIR/practitionerrole.html">PractitionerRole</a> |
<a href="https://hl7.org/FHIR/organization.html">RelatedPerson</a> | <a
href="https://hl7.org/FHIR/healthcareservice.html">Group</a> | <a
href="https://hl7.org/FHIR/patient.html">CareTeam</a> | <a
href="https://hl7.org/FHIR/practitionerrole.html">HealthcareService</a>)</p></td>
<td></td>
<td></td>
</tr>
<tr>
<td>sender</td>
<td><p>Reference [0..1]</p>
<p>(<a href="https://hl7.org/FHIR/organization.html">Device</a> | <a
href="https://hl7.org/FHIR/relatedperson.html">Organization</a> | <a
href="https://hl7.org/FHIR/organization.html">Patient</a> | <a
href="https://hl7.org/FHIR/organization.html">Practitioner</a> | <a
href="https://hl7.org/FHIR/organization.html">PractitionerRole</a> | <a
href="https://hl7.org/FHIR/relatedperson.html">RelatedPerson</a> | <a
href="https://hl7.org/FHIR/practitioner.html">HealthcareService</a>)</p></td>
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
<td>Reference [0..*] (Condition | Observation | DiagnosticReport |
DocumentReference)</td>
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
<caption><p>Tableau 10 Liste des extensions applicables à la ressource
CommunicationRequest dans le contexte du flux 3</p></caption>
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
<td>EventTime</td>
<td>[1..1]</td>
<td>dateTime</td>
<td><p>Id : event-time</p>
<p>url :
http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/eventTime</p>
<p>Date à laquelle l’évènement a eu lieu (occurrence dans l’étude métier
[1])</p></td>
</tr>
<tr>
<td>EventType</td>
<td>[1..1]</td>
<td>CodeableConcept</td>
<td><p>id : event-type</p>
<p>url :
http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/EventType</p>
<p>Cette information identifie le type d’évènement qui est lié à un
abonnement particulier (i.e : dépôt de document, sortie d’hôpital,
etc.).</p>
<p>Nomenclature à utiliser :
JDV_J46-TypeEvenementNotification-CI-SIS</p></td>
</tr>
</tbody>
</table>

Pour les besoins du flux 1 de souscription d’abonnement, un nouveau
paramètre de recherche est défini pour la ressource CommunicationRequest
de façon à pouvoir filtrer les évènements par leur type.

| Nom | Type | Description |
|----|----|----|
| NdE_CommunicationRequest_EventType | token | Permet de filtrer sur le type d’évènement. Ce paramètre de recherche fait référence à l’attribut value de l’extension EventType de type CodeableConcept. |

Tableau 11 Liste des paramètres de recherche supplémentaires pour la
ressource CommunicationRequest

### Construction des flux

Le **Flux 3 – EmissionEvenement** contient les informations relatives à un évènement qui a eu
lieu.

La première étape de la construction du flux 3 d’émission d’un évènement
consiste à organiser son contenu. Le corps de la requête HTTP est
constitué de la ressource « CommunicationRequest » (profil
EventDeclarationNdE) contenant les ressources suivantes (utilisation de
l’élément **contained**):

La ressource référencée comme sujet de l’évènement par l’élément
subject : la ressource « Patient » utilisant le profil français
FrPatient ;

La ressource référencée en tant qu’émetteur de l’évènement par l’élément
requester: la ressource « Practitioner » utilisant le profil français
FrPractitioner ou « Organization » utilisant le profil français
FrOrganization

La ressource CommunicationRequest ainsi formée sera envoyée dans le
corps de la requête HTTP POST suivante :

POST \[base\]/CommunicationRequest

Où \[base\] est l’endpoint FHIR mis à disposition par le gestionnaire
d’abonnements.

Si l’évènement est correctement pris en compte, le système Gestionnaire
d’abonnements doit retourner un code « 201 created » avec, dans le corps
de la réponse, la ressource « CommunicationRequest » reçue.

En cas d’erreur, le Gestionnaire d’abonnements doit répondre avec les
codes HTTP appropriés tels que définis par l’API REST FHIR et renvoyer
une ressource de type OperationOutcome dans le corps de la réponse.
