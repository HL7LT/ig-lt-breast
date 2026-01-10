Profile: ImAccessionNumberIdentifier
Parent: Identifier
Id: im-accession-number-identifier
Title: "IM Imaging Accession Number Identifier"
Description: "This profile on Identifier represents the Accession Number for the Imaging Order."
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
* ^url = $AccessionNumberIdentifierEuImagingUrl
* type 1..
* type = $v2-0203#ACSN
* system 1..
* value 1..
