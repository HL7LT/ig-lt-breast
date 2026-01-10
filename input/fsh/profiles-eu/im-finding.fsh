Profile: ImFinding
Parent: $EuObservation
Id: ImFinding
Title: "IM Finding"
Description: "Finding during imaging procedure."
* ^status = #draft
* ^date = "2025-05-14T15:47:13+02:00"
* ^publisher = "HL7 Europe"
* ^contact.name = "HL7 Europe"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.eu"
* ^jurisdiction = $m49.htm#150 "Europe"
* ^copyright = "Used by permission of HL7 Europe, all rights reserved Creative Commons License"
* ^url = $FindingEuImagingUrl
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.ordered = false
* identifier ^slicing.rules = #open
* identifier contains observationUid 0..1
* identifier[observationUid].type 1..
* identifier[observationUid].type = $codesystem-missing-dicom-terminology#00080018 "SOP Instance UID"
* basedOn ^slicing.discriminator.type = #type
* basedOn ^slicing.discriminator.path = "$this"
* basedOn ^slicing.ordered = false
* basedOn ^slicing.rules = #open
* basedOn contains imorderaccession 0..1
* basedOn[imorderaccession] only Reference($OrderEuImagingUrl)
* basedOn[imorderaccession].identifier 1..
* basedOn[imorderaccession].identifier only $AccessionNumberIdentifierEuImagingUrl
