Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $sct = http://snomed.info/sct
Alias: $im-imaging-device-type = http://hl7.eu/fhir/imaging-r5/ValueSet/im-imaging-device-type

Profile: ImImagingDevice
Parent: Device
Id: ImImagingDevice
Title: "Im Imaging Device"
Description: "The device the made the image."
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
* ^url = "http://hl7.eu/fhir/imaging-r5/StructureDefinition/ImImagingDevice"
* status 1..
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.ordered = false
* category ^slicing.rules = #open
* category contains imaging 1..1
* category[imaging] = $sct#314789007 "Diagnostic imaging equipment"
* type from $im-imaging-device-type (extensible)

