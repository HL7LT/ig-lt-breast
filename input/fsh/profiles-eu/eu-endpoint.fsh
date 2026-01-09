Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $organization-eu = http://hl7.eu/fhir/base-r5/StructureDefinition/organization-eu

Profile: EndpointEu
Parent: Endpoint
Id: EndpointEu
Title: "EU Endpoint"
Description: "The FHIR endpoint resource with EU specific references."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^version = "0.1.0-ballot"
* ^status = #draft
* ^date = "2025-05-14T15:47:13+02:00"
* ^publisher = "HL7 Europe"
* ^contact.name = "HL7 Europe"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.eu"
* ^jurisdiction = $m49.htm#150 "Europe"
* ^copyright = "Used by permission of HL7 Europe, all rights reserved Creative Commons License"
* ^url = "http://hl7.eu/fhir/imaging-r5/StructureDefinition/EndpointEu"
* managingOrganization only Reference($organization-eu)
