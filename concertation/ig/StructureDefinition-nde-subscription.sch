<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Subscription
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Subscription</sch:title>
    <sch:rule context="f:Subscription">
      <sch:assert test="count(f:contained) &gt;= 1">contained: minimum cardinality of 'contained' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subscription-date']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subscription-date': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/start']) &gt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/start': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/start']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/start': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subject']) &gt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subject': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subject']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subject': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/declarant']) &gt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/declarant': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/declarant']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/declarant': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/event-type']) &gt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/event-type': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/event-type']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/event-type': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subscriber']) &gt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subscriber': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subscriber']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/subscriber': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
