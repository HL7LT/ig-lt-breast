Profile: ProcedureEu
Parent: Procedure
Id: ProcedureEu
Title: "EU Procedure"
Description: "A procedure profile for the EU."
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
* ^url = $EuProcedureUrl
* subject only Reference($EuPatientUrl)
* bodySite.extension contains BodyStructureReference named bodyStructure 0..1
* used ^slicing.discriminator.type = #type
* used ^slicing.discriminator.path = "concept"
* used ^slicing.ordered = false
* used ^slicing.rules = #open
* used contains device 0..1
* used[device] only CodeableReference(Device)