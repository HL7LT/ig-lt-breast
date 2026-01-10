Profile: CompositionEu
Parent: ClinicalDocument
Id: CompositionEu
Title: "EU Composition"
Description: "Clinical document used to represent a report for the scope of the HL7 Europe project."
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
* url = $EuCompositionUrl
* extension contains
    http://hl7.org/fhir/StructureDefinition/event-basedOn named basedOn 0..* and
    $InformationRecipientExtUrl named informationRecipient 0..*
* identifier ^short = "Report identifier"
* identifier ^definition = "Identifiers assigned to this report by the performer or other systems. It shall be common to several report versions"
* identifier ^comment = "Composition.identifier SHALL be equal to one of the DiagnosticReport.identifier, if at least one exists"
* category 1..
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.ordered = false
* category ^slicing.rules = #open