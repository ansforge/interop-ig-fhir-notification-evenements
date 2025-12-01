### Correspondances entre objets métier et ressources du standard HL7 FHIR

Dans cette section, une mise en correspondance est faite entre les
objets identifiés à l’issue de l’étude métier de la notification
d’évènements \[1\] et les ressources et éléments du standard HL7 FHIR.

Les sections qui suivent détaillent la mise en correspondance des
informations métier \[1\] contenues dans les flux de la Table 2 avec les
éléments des ressources[^4] FHIR correspondantes. Pour les attributs qui
ne sont pas définis dans les ressources FHIR, des extensions (marquées
par « *extension* ») sont définies.

Le **Flux 2 – SuppressionAbonnement**  permet de supprimer un abonnement. Les informations véhiculées
dans ce flux sont nécessaires pour identifier l’abonnement à supprimer.

<table style="width:100%;">
<caption><p>Tableau 4 Mise en correspondance pour le flux 2:
SuppressionAbonnement</p></caption>
<colgroup>
<col style="width: 28%" />
<col style="width: 30%" />
<col style="width: 16%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr>
<th colspan="2"> Eléments métier</th>
<th colspan="2">Eléments FHIR</th>
</tr>
</thead>
<tbody>
<tr>
<td>Nom Objet</td>
<td>Nom attribut</td>
<td>Ressource</td>
<td>Elément</td>
</tr>
<tr>
<td>Abonnement</td>
<td>idAbonnement : [1..1] Identifiant</td>
<td><strong>Subscription</strong></td>
<td>id : id [0..1]<a href="#fn1" class="footnote-ref" id="fnref1"
role="doc-noteref"><sup>1</sup></a></td>
</tr>
</tbody>
</table>
<section id="footnotes" class="footnotes footnotes-end-of-document"
role="doc-endnotes">
<hr />
<ol>
<li id="fn1"><p>Cet identifiant technique est fourni dans la réponse au
flux 1 de souscription. Il peut ainsi être utilisé par la suite pour la
mise à jour ou la suppression d’un abonnement.<a href="#fnref1"
class="footnote-back" role="doc-backlink">↩︎</a></p></li>
</ol>
</section>

### Construction des flux

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
