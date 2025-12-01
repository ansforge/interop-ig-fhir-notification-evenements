### Correspondances entre objets métier et ressources du standard HL7 FHIR

Dans cette section, une mise en correspondance est faite entre les
objets identifiés à l’issue de l’étude métier de la notification
d’évènements \[1\] et les ressources et éléments du standard HL7 FHIR.

Les sections qui suivent détaillent la mise en correspondance des
informations métier \[1\] contenues dans les flux de la Table 2 avec les
éléments des ressources[^4] FHIR correspondantes. Pour les attributs qui
ne sont pas définis dans les ressources FHIR, des extensions (marquées
par « *extension* ») sont définies.

Le **Flux 1 – SouscriptionAbonnement** concerne la création ou la mise à
jour d’un abonnement. Un abonnement porte sur les types d'évènements qui
intéressent l’abonné et qui peuvent faire l’objet d’une notification. Il
est défini par l’identification de l’abonné, le média de
notification[^5] à utiliser, la personne prise en charge associée aux
évènements, le type d’événement donnant lieu à notification et la
période de validité de l’abonnement.

La gestion des droits d’accès est hors champs des présentes
spécifications et doit être appliquée par les systèmes qui gèrent les
notifications en fonction de leurs politiques de sécurité.

La Table 3 contient la mise en correspondance des informations métier
contenues dans ce flux avec les ressources FHIR correspondantes.

<table style="width:100%;">
<caption><p>Tableau 3 Mise en correspondance pour le flux 1:
Souscription Abonnement</p></caption>
<colgroup>
<col style="width: 22%" />
<col style="width: 25%" />
<col style="width: 15%" />
<col style="width: 36%" />
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
<td rowspan="5">Abonnement</td>
<td>idAbonnement : [0..1] Identifiant</td>
<td><strong>Subscription</strong></td>
<td>id : id [0..1]</td>
</tr>
<tr>
<td>mediaDiffusion : [1..1] Code</td>
<td><strong>Subscription</strong></td>
<td><p>channel.type [1..1] code</p>
<p>channel.endpoint [0..1] url</p></td>
</tr>
<tr>
<td>validiteDebut : [1..1] DateHeure</td>
<td><strong>Subscription</strong></td>
<td><em>Extension (Start)</em></td>
</tr>
<tr>
<td>validiteFin : [1..1] DateHeure</td>
<td><strong>Subscription</strong></td>
<td>end [0..1] instant</td>
</tr>
<tr>
<td>dateDemande : [0..1] DateHeure</td>
<td><strong>Subscription</strong></td>
<td><em>Extension (SubscriptionDate)</em></td>
</tr>
<tr>
<td>Evènement</td>
<td>typeEvenement : [1..1] Code</td>
<td><strong>Subscription</strong></td>
<td><p><em>Extension (EventType)</em></p>
<p>CodeableConcept</p>
<p>JDV_J46-TypeEvenementNotification-CI-SIS</p></td>
</tr>
<tr>
<td>Abonné</td>
<td>idAbonne : [1..1] Identifiant</td>
<td><strong>Subscription</strong></td>
<td><p><em>Extension (Subscriber)</em></p>
<p>Reference (Patient ou Practitioner ou Organization ou
RelatedPerson)</p></td>
</tr>
<tr>
<td rowspan="3">PersonnePriseEnCharge</td>
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
<td rowspan="2">PersonnePhysique</td>
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
<p>Slice « usualName », Patient.name.use prenant la valeur « usual
»</p></td>
</tr>
<tr>
<td>Emetteur</td>
<td>idEmetteur : [1..1] Identifiant</td>
<td><strong>Subscription</strong></td>
<td><p><em>Extension (Declarant)</em></p>
<p>Reference (Practitioner ou Organization)</p></td>
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
<td rowspan="2">PersonnePhysique</td>
<td>nomFamille : [0..1] Texte</td>
<td><p><strong>Practitioner</strong></p>
<p><em>FrPractitioner</em></p></td>
<td>name[0..*].family : string [0..1] (FrHumanName)</td>
</tr>
<tr>
<td>prenomUsuel: [0..1] Texte</td>
<td><p><strong>Practitioner</strong></p>
<p><em>FrPractitioner</em></p></td>
<td>name[0..*].family : string [0..1] (FrHumanName)</td>
</tr>
<tr>
<td rowspan="4">AbonnePP</td>
<td>idAbonnePP : [0..1] Identifiant</td>
<td rowspan="4"><p><strong>Practitioner</strong></p>
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
<td>addresse : [0..*] Addresse</td>
<td>address : FrAddress [0..*]</td>
</tr>
<tr>
<td>TypeAbonnePP : [0..1] Type</td>
<td>Pas de mise en correspondance pour cet attribut qui, d’un point de
vue métier, permet d’identifier le type d’abonné. On retrouve cette
information au niveau du type de la ressource qui représente
l’abonné.</td>
</tr>
<tr>
<td rowspan="2">PersonnePhysique</td>
<td>nomFamille : [0..1] Texte</td>
<td rowspan="2"><p><strong>Practitioner</strong></p>
<p><em>FrPractitioner</em></p>
<p>Ou</p>
<p><strong>Patient</strong></p>
<p><em>FrPatient</em></p>
<p>Ou</p>
<p><strong>RelatedPerson</strong></p>
<p><em>FrRelatedPerson</em></p></td>
<td>name.family : string [0..1]</td>
</tr>
<tr>
<td>prenomUsuel : [0..1] Texte</td>
<td>name.given : string [0..1]</td>
</tr>
<tr>
<td rowspan="5">AbonnePM</td>
<td>identifiantAbonnePM : [0..1] Identifiant</td>
<td><p><strong>Organization</strong></p>
<p><em>FrOrganization</em></p></td>
<td>identifier : Identifier [0..*]</td>
</tr>
<tr>
<td>addresse : [0..*] Addresse</td>
<td><p><strong>Organization</strong></p>
<p><em>FrOrganization</em></p></td>
<td>address : FrAddress [0..*]</td>
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

### Ressource « Subscription »

La ressource FHIR **Subscription**[^7] est utilisée pour définir un
abonnement qui peut être hébergé dans un système d’information agissant
comme un gestionnaire d’abonnements.

Dans le contexte de la notification d’évènements, cette ressource est
utilisée pour mettre en œuvre le Flux 1[^8]-SouscriptionAbonnement.

Cette spécification technique introduit un nouveau profil pour la
ressource Subscription : NdE_SubscriptionNdE.

<table>
<caption><p>Tableau 7 Liste des attributs de la ressource
Subscription</p></caption>
<colgroup>
<col style="width: 20%" />
<col style="width: 26%" />
<col style="width: 24%" />
<col style="width: 28%" />
</colgroup>
<thead>
<tr>
<th>Eléments</th>
<th>Type et cardinalité</th>
<th>Contraintes</th>
<th>Commentaire</th>
</tr>
</thead>
<tbody>
<tr>
<td>contained</td>
<td>Resource [0..*]</td>
<td><p>Cardinalité contrainte à [1..*]</p>
<p>Type de ressource limitée à Patient, Practitioner, Organization,
RelatedPerson</p></td>
<td>Les ressources référencées par les attributs de la ressource
Subscription doivent être présentes dans cet élément.</td>
</tr>
<tr>
<td><em>NdE_SubscriptionDate</em></td>
<td><p>Extension du volet NdE</p>
<p>dateTime [0..1]</p></td>
<td></td>
<td><p>Représente la date de création de l’abonnement</p>
<p>La date de création d’un abonnement peut ne pas circuler dans le flux
d’échange qui concerne la création d’un abonnement et peut être
automatiquement générée par le système une fois que la demande est
reçue.</p></td>
</tr>
<tr>
<td><em>NdE_Start</em></td>
<td><p>Extension du volet NdE</p>
<p>dateTime [1..1]</p></td>
<td></td>
<td><p>Cette information identifie la date de début de validité d’un
abonnement</p>
<p>Start et SubscriptionDate peuvent contenir la même date, mais pas
nécessairement.</p></td>
</tr>
<tr>
<td><em>NdE_Subject</em></td>
<td><p>Extension du volet NdE</p>
<p>Reference (FrPatient) [1..1]</p></td>
<td></td>
<td><p>Référence au profil français de la ressource Patient contenant
les informations relatives à la personne prise en charge (ou au
patient)</p>
<p>La ressource référencée doit être présente sous l’élément
Subscription.contained</p></td>
</tr>
<tr>
<td><em>NdE_Declarant</em></td>
<td><p>Extension du volet NdE</p>
<p>Reference (FrPractitioner|FrOrganization) [1..1]</p></td>
<td></td>
<td><p>Référence aux profils français des ressources qui identifient
l’émetteur de l’évènement (Practitioner pour un professionnel,
Organization pour un établissement)</p>
<p>La ressource référencée doit être présente sous l’élément
Subscription.contained</p></td>
</tr>
<tr>
<td><em>NdE_EventType</em></td>
<td><p>Extension du volet NdE</p>
<p>CodeableConcept [1..1]</p></td>
<td></td>
<td><p>Cette information identifie le type d’évènement qui est lié à un
abonnement particulier (i.e : dépôt de document, sortie d’hôpital,
etc.).</p>
<p>Nomenclature à utiliser :
JDV_J46-TypeEvenementNotification-CI-SIS</p></td>
</tr>
<tr>
<td><em>NdE_Subscriber</em></td>
<td><p>Extension du volet NdE</p>
<p>Reference (FrPractitioner| FrOrganization | FrPatient |
FrRelatedPerson) [1..1]</p></td>
<td></td>
<td><p>Cette information identifie la personne ou l’entité qui est
censée recevoir les notifications.</p>
<p>La ressource référencée doit être présente sous l’élément
Subscription.contained</p></td>
</tr>
<tr>
<td>id<a href="#fn1" class="footnote-ref" id="fnref1"
role="doc-noteref"><sup>1</sup></a></td>
<td>identifier [0..1]</td>
<td>Cet identifiant doit être présent dans le flux de mise à jour de
l’abonnement.</td>
<td>Identifiant de l’abonnement</td>
</tr>
<tr>
<td>status</td>
<td>code [1..1]</td>
<td></td>
<td><p>Statut de l’abonnement</p>
<p>http://hl7.org/fhir/valueset-subscription-status.html</p></td>
</tr>
<tr>
<td>contact</td>
<td>ContactPoint [0..*]</td>
<td></td>
<td>Coordonnées de la source</td>
</tr>
<tr>
<td>reason</td>
<td>String [1..1]</td>
<td></td>
<td>La raison de la création de l’abonnement</td>
</tr>
<tr>
<td>criteria<a href="#fn2" class="footnote-ref" id="fnref2"
role="doc-noteref"><sup>2</sup></a></td>
<td>String [1..1]</td>
<td></td>
<td><p>Cet élément n’est pas défini dans l’étude métier. Cependant,
c’est un élément obligatoire dans le standard FHIR.</p>
<p>Il doit contenir une requête de recherche sur un type de ressource
géré par le gestionnaire d’abonnements. Dans le cas présent, il s’agit
d’une recherche sur la ressource CommunicationRequest, représentant les
déclarations d’évènements reçues par le gestionnaire d’abonnements, avec
comme paramètres de recherche le type d’évènement<a href="#fn3"
class="footnote-ref" id="fnref3" role="doc-noteref"><sup>3</sup></a> et
l’identifiant du patient sujet de l’évènement</p></td>
</tr>
<tr>
<td>end</td>
<td>Instant [0..1]</td>
<td></td>
<td>Date et heure de fin de l’abonnement</td>
</tr>
<tr>
<td>error</td>
<td>string [0..1]</td>
<td></td>
<td>La dernière erreur survenue à l’envoie d’une notification</td>
</tr>
<tr>
<td>Channel.type<a href="#fn4" class="footnote-ref" id="fnref4"
role="doc-noteref"><sup>4</sup></a></td>
<td>code [1..1]</td>
<td></td>
<td>Type du media<a href="#fn5" class="footnote-ref" id="fnref5"
role="doc-noteref"><sup>5</sup></a> de diffusion</td>
</tr>
<tr>
<td>Channel.endpoint</td>
<td>url [0..1]</td>
<td></td>
<td>Il s’agit du endpoint à utiliser pour envoyer les notifications</td>
</tr>
<tr>
<td>Channel.payload</td>
<td>code [0..1]</td>
<td></td>
<td>MIME type à envoyer ou à omettre s’il y a pas de payload</td>
</tr>
<tr>
<td>Channel.header</td>
<td>string [0..*]</td>
<td></td>
<td>Dépend du type de channel</td>
</tr>
</tbody>
</table>
<section id="footnotes" class="footnotes footnotes-end-of-document"
role="doc-endnotes">
<hr />
<ol>
<li id="fn1"><p>Cet identifiant permet de référencer la ressource au
sein du ou des système(s) d’information l’hébergeant, il peut être
utilisé par les clients pour les suppressions, mises à jour…<a
href="#fnref1" class="footnote-back" role="doc-backlink">↩︎</a></p></li>
<li id="fn2"><p>Exemple de recherche pour un évènement de type « dépôt
de document » pour un patient dont l’identifiant est connu :
CommunicationRequest?subject.identifier=urn:oid:1.2.3.4.5|PATID12334&amp;event-type=https://mos.esante.gouv.fr/NOS/TRE_R254-TypeEvenement/FHIR/TRE-R254-TypeEvenement|DOC<a
href="#fnref2" class="footnote-back" role="doc-backlink">↩︎</a></p></li>
<li id="fn3"><p>Ce paramètre de recherche référence une extension, un
nouveau paramètre de recherche pour la ressource CommunicationRequest
est défini au niveau de la section 2.2.6.1.<a href="#fnref3"
class="footnote-back" role="doc-backlink">↩︎</a></p></li>
<li
id="fn4"><p>https://www.hl7.org/fhir/valueset-subscription-channel-type.html<a
href="#fnref4" class="footnote-back" role="doc-backlink">↩︎</a></p></li>
<li id="fn5"><p>Un média de notification est le canal par lequel la
notification est envoyée à l’abonné (ex. sms, mail, pop-up dans une
application…)<a href="#fnref5" class="footnote-back"
role="doc-backlink">↩︎</a></p></li>
</ol>
</section>

Cette spécification technique introduit plusieurs extensions applicables
à la ressource FHIR et décrites dans le tableau ci-dessous.

<table>
<caption><p>Tableau 8 Liste des extensions applicables à la ressource
Subscription</p></caption>
<colgroup>
<col style="width: 22%" />
<col style="width: 12%" />
<col style="width: 26%" />
<col style="width: 38%" />
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
<td>NdE_SubscriptionDate</td>
<td>[0..1]</td>
<td>dateTime</td>
<td><p>Id : subscription-date</p>
<p>url :
http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/SubscriptionDate</p>
<p>Représente la date de création de l’abonnement</p>
<p>La date de création d’un abonnement peut ne pas circuler dans le flux
d’échange qui concerne la création d’un abonnement et peut être
automatiquement générée par le système une fois que la demande est
reçue.</p></td>
</tr>
<tr>
<td>NdE_Start</td>
<td>[1..1]</td>
<td>dateTime</td>
<td><p>id : start</p>
<p>url : http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/Start</p>
<p>Cette information identifie la date de début de validité d’un
abonnement</p>
<p>Start et SubscriptionDate peuvent contenir la même date, mais pas
nécessairement.</p></td>
</tr>
<tr>
<td>NdE_Subject</td>
<td>[1..1]</td>
<td>Reference (FrPatient)</td>
<td><p>id : subject</p>
<p>url :
http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/Subject</p>
<p>Référence au profil français de la ressource Patient contenant les
informations relatives à la personne prise en charge (ou au patient)</p>
<p>La ressource référencée doit être présente sous l’élément
Subscription.contained</p></td>
</tr>
<tr>
<td>NdE_Declarant</td>
<td>[1..1]</td>
<td>Reference (FrPractitioner|FrOrganization)</td>
<td><p>id : declarant</p>
<p>url :
http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/Declarant</p>
<p>Référence aux profils français des ressources qui identifient
l’émetteur de l’évènement (Practitioner pour un professionnel,
Organization pour un établissement)</p>
<p>La ressource référencée doit être présente sous l’élément
Subscription.contained</p></td>
</tr>
<tr>
<td>NdE_EventType</td>
<td>[1..1]</td>
<td>CodeableConcept</td>
<td><p>id : event-type</p>
<p>url :
http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/EventType</p>
<p>Cette information identifie le type d’évènement qui est lié à un
abonnement particulier (i.e : dépôt de document, sortie d’hôpital,
etc.).</p>
<p>Nomenclature à utiliser :
JDV_J46-TypeEvenementNotification-CI-SIS</p></td>
</tr>
<tr>
<td>NdE_Subscriber</td>
<td>[1..1]</td>
<td>Reference (FrPractitioner| FrOrganization | FrPatient |
FrRelatedPerson)</td>
<td><p>id : subscriber</p>
<p>url :
http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/Subscriber</p>
<p>Cette information identifie la personne ou l’entité qui est censée
recevoir les notifications.</p>
<p>La ressource référencée doit être présente sous l’élément
Subscription.contained</p></td>
</tr>
</tbody>
</table>

### Construction des flux

**Flux 1 – SouscriptionAbonnement** contient les informations relatives à la souscription d’un
abonnement pour un type d’évènement déterminé ou la mise à jour de
celui-ci.

La première étape de la construction du flux 1 de souscription d’un
abonnement consiste à organiser son contenu. Le corps de la requête HTTP
est constitué de la ressource « Subscription » contenant les ressources
suivantes (utilisation de l’élément **contained**):

La ressource référencée comme personne prise en charge par l’extension
Subject : la ressource « Patient » utilisant le profil français
FrPatient ;

La ressource référencée en tant qu’émetteur de l’évènement par
l’extension Declarant : la ressource « Practitioner » utilisant le
profil français FrPractitioner ou « Organization » utilisant le profil
français FrOrganization

La ressource référencée en tant qu’abonné par l’extension Subscriber:

La ressource « RelatedPerson » utilisant le profil français
FrRelatedPerson si l’abonné n’est ni la personne prise en charge, ni
l’émetteur de l’évènement

La ressource « Organization » utilisant le profil français
FrOrganization ou « Practitioner » utilisant le profil français
FrPractitioner si l’abonné est différent de l’émetteur

Aucune si l’abonné est le patient ou l’émetteur lui-même

Pour la création d’un nouvel abonnement, la ressource Subscription ainsi
formée sera envoyée dans le corps de la requête HTTP POST suivante :

POST \[base\]/Subscription

Où \[base\] est l’endpoint FHIR mis à disposition par le gestionnaire
d’abonnements.

Si la souscription à l’abonnement est correctement effectuée, le système
Gestionnaire d’abonnements doit retourner un code « 201 created » avec,
dans le corps de la réponse, la ressource « Subscription » nouvellement
créée avec l’élément id peuplé.

Dans le cas d’une mise à jour, l’opération PUT est utilisée. La
ressource Subscription telle que définie ci-dessus sera envoyée dans le
corps de la requête HTTP PUT suivante :

PUT \[base\]/Subscription/\[id\]

Où \[base\] est l’endpoint FHIR mis à disposition par le gestionnaire
d’abonnements et \[id\] correspond à l’élément id de la ressource
incluse dans le corps de la requête.

Si la mise à jour de l’abonnement est correctement effectuée, le système
Gestionnaire d’abonnement doit retourner un code « 200 OK », avec dans
le corps de la réponse, la ressource « Subscription » mise à jour.

Pour la création comme pour la mise à jour, en cas d’erreur, le
Gestionnaire d’abonnements doit répondre avec les codes HTTP appropriés
tels que définis par l’API REST FHIR et renvoyer une ressource de type
OperationOutcome dans le corps de la réponse.
