Extension: ImImagingStudyInstanceDescription
Id: instance-description
Title: "IM Instance Description"
Description: "A description of the instance in an ImagingStudy."
Context: ImagingStudy.series.instance
* ^version = "0.1.0-ballot"
* ^status = #draft
* ^date = "2025-05-14T15:47:13+02:00"
* ^publisher = "HL7 Europe"
* ^contact.name = "HL7 Europe"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.eu"
* ^jurisdiction = $m49.htm#150 "Europe"
* ^copyright = "Used by permission of HL7 Europe, all rights reserved Creative Commons License"
* . ^short = "Instance Description"
* . ^definition = "A description of the instance in an ImagingStudy."
* ^url = $ImagingStudyInstanceDescriptionEuImagingUrl
* value[x] only string