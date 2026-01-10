Profile: ImKeyImageImagingSelection
Parent: $ImagingSelectionEuImagingUrl
Id: ImKeyImageImagingSelection
Title: "IM Key images represented as an ImagingSelection"
Description: "Key images represented as an ImagingSelection"
* ^status = #draft
* ^date = "2025-05-14T15:47:13+02:00"
* ^publisher = "HL7 Europe"
* ^contact.name = "HL7 Europe"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.eu"
* ^jurisdiction = $m49.htm#150 "Europe"
* ^copyright = "Used by permission of HL7 Europe, all rights reserved Creative Commons License"
* ^url = $KeyImageImagingSelectionEuImagingUrl
* extension contains
    ArtifactDescription named title 0..1 and
    ArtifactTitle named description 0..1
* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "actor"
* performer ^slicing.ordered = false
* performer ^slicing.rules = #open
* performer contains
    performer 0..1 and
    device 0..1
* performer[performer].actor only Reference($EuPractitionerRoleUrl)
* performer[device].actor only Reference($ImagingDeviceEuImagingUrl)
