Profile: ObservationEu
Parent: Observation
Id: ObservationEu
Title: "EU Observation"
Description: "A observation profile for the EU."
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
* ^url = $EuObservationUrl
* effective[x] 1..
* performer.extension contains PerformerFunction named performerFunction 0..1
* value[x] 1..
* value[x] only $EuQuantity or CodeableConcept or string or integer or $EuRangeUrl or Ratio or SampledData or time or dateTime or Period or Attachment or Reference(MolecularSequence)
* value[x].extension contains DataAbsentReason named dataAbsentReason 0..1
* component.value[x] 1..
* component.value[x] only $EuQuantity or CodeableConcept or string or integer or $EuRangeUrl or Ratio or SampledData or time or dateTime or Period or Attachment or Reference(MolecularSequence)
* component.value[x].extension contains DataAbsentReason named dataAbsentReason 0..1