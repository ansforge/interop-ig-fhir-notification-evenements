Profile: NdE_SubscriptionNdE
Parent: Subscription
Id: nde-subscription
Description: "SouscriptionAbonnement concerne la création ou la mise à jour d’un abonnement. Un abonnement porte sur les types d'évènements qui intéressent l’abonné et qui peuvent faire l’objet d’une notification. Il est défini par l’identification de l’abonné, le média de notification  à utiliser, la personne prise en charge associée aux évènements, le type d’événement donnant lieu à notification et la période de validité de l’abonnement."

* contained 1..
* contained only FRCorePatientProfile or FRCorePatientINSProfile or FRCorePractitionerProfile or FRCoreOrganizationProfile or FRCoreRelatedPersonProfile
* contained ^requirements = "Les ressources référencées par les attributs de la ressource Subscription doivent être présentes dans cet élément."

* extension contains
    NdE_SubscriptionDate named SubscriptionDate 0..1 and
    NdE_Start named Start 1..1 and
    NdE_Subject named Subject 1..1 and
    NdE_Declarant named Declarant 1..1 and
    NdE_EventType named EventType 1..1 and
    NdE_Subscriber named Subscriber 1..1
    
* criteria ^comment = "Cet élément doit contenir une requête de recherche sur un type de ressource géré par le gestionnaire d’abonnements. Dans le cas présent, il s’agit d’une recherche sur la ressource CommunicationRequest, représentant les déclarations d’évènements reçues par le gestionnaire d’abonnements, avec comme paramètres de recherche le type d’évènement  et l’identifiant du patient sujet de l’évènement"
