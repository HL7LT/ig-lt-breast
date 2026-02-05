Profile: ImOrder
Parent: ServiceRequest
Id: ImOrder
Title: "IM Imaging Order"
Description: "This profile on ServiceRequest represents the order for the Imaging Study and report."
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
* ^url = $OrderEuImagingUrl
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.ordered = false
* identifier ^slicing.rules = #open
* identifier contains accessionNumber 0..1
* identifier[accessionNumber] only $AccessionNumberIdentifierEuImagingUrl
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.ordered = false
* category ^slicing.rules = #open
* category contains imaging 1..1
* category[imaging] = $sct#363679005 "Imaging"

* code ^short = "The procedure or service requested"
* code ^definition = "A code that identifies a particular service (i.e., procedure, diagnostic investigation, or panel of investigations) that have been requested."
* code ^binding.description = "Codes for tests or services that can be carried out by a designated individual or organization."

* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "$this"
* supportingInfo ^slicing.ordered = false
* supportingInfo ^slicing.rules = #open
* supportingInfo contains pregnancy 0..1
* supportingInfo[pregnancy] from $pregnancy-status-uv-ips (required)
