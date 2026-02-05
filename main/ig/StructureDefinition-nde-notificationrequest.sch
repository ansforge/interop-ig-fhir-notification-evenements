<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile CommunicationRequest
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:CommunicationRequest</sch:title>
    <sch:rule context="f:CommunicationRequest">
      <sch:assert test="count(f:contained) &gt;= 1">contained: minimum cardinality of 'contained' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/event-emission-time']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/event-emission-time': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/event-time']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/event-time': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/event-type']) &gt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/event-type': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/event-type']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/event-type': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:basedOn) &gt;= 1">basedOn: minimum cardinality of 'basedOn' is 1</sch:assert>
      <sch:assert test="count(f:basedOn) &lt;= 1">basedOn: maximum cardinality of 'basedOn' is 1</sch:assert>
      <sch:assert test="count(f:medium) &gt;= 1">medium: minimum cardinality of 'medium' is 1</sch:assert>
      <sch:assert test="count(f:medium) &lt;= 1">medium: maximum cardinality of 'medium' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:payload) &gt;= 1">payload: minimum cardinality of 'payload' is 1</sch:assert>
      <sch:assert test="count(f:payload) &lt;= 1">payload: maximum cardinality of 'payload' is 1</sch:assert>
      <sch:assert test="count(f:requester) &gt;= 1">requester: minimum cardinality of 'requester' is 1</sch:assert>
      <sch:assert test="count(f:recipient) &gt;= 1">recipient: minimum cardinality of 'recipient' is 1</sch:assert>
      <sch:assert test="count(f:recipient) &lt;= 1">recipient: maximum cardinality of 'recipient' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CommunicationRequest/f:recipient</sch:title>
    <sch:rule context="f:CommunicationRequest/f:recipient">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/recipient-endpoint']) &gt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/recipient-endpoint': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/recipient-endpoint']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/nde/StructureDefinition/recipient-endpoint': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 1">identifier: maximum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
