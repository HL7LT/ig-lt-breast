Extension: CrossVersionMediaViewExtension
Id: CrossVersionMediaViewExtension
Title: "EU Media.view extension"
Description: "This cross version extension includes the FHIR R4 version of the Media.view field which has at this point in time (April 18, 2025), not yet been included in the extension pack."
Context: DocumentReference
* ^version = "0.1.0-ballot"
* ^status = #draft
* ^date = "2025-05-14T15:47:13+02:00"
* ^publisher = "HL7 Europe"
* ^contact.name = "HL7 Europe"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.eu"
* ^jurisdiction = $m49.htm#150 "Europe"
* ^copyright = "Used by permission of HL7 Europe, all rights reserved Creative Commons License"
* . ^short = "Media.view extension"
* . ^definition = "This cross version extension includes the FHIR R4 version of the Media.view field which has at this point in time (April 18, 2025), not yet been included in the extension pack."
* ^url = $CrossVersionMediaViewExtUrl
* value[x] only CodeableConcept
* value[x] from $media-view (required)
