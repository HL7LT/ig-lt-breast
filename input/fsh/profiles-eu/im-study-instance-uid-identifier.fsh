Profile: ImStudyInstanceUidIdentifier
Parent: Identifier
Id: im-study-instance-uid-identifier
Title: "IM Study Instance UID Identifier"
Description: "This profile on Identifier represents the Study Instance UID (0020,000D) for the Imaging Order."
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
* ^url = $StudyInstanceUidIdentifierEuImagingUrl
* type = $codesystem-missing-dicom-terminology#0020000D "Study Instance UID"
* system = "urn:dicom:uid"
* value 1..
