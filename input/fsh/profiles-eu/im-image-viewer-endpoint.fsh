Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $codesystem-endpoint-terminology = http://hl7.eu/fhir/imaging-r5/CodeSystem/codesystem-endpoint-terminology
Alias: $EndpointEu = http://hl7.eu/fhir/imaging-r5/StructureDefinition/EndpointEu

Profile: ImImageIidViewerEndpoint
Parent: $EndpointEu
Id: ImImageIidViewerEndpoint
Title: "IM Image Viewer Endpoint"
Description: """This profile defines a placeholder for an Endpoint for a viewer that can be used to access the study, serie it is present on.
The application is based on [IHE-IID](https://www.ihe.net/uploadedFiles/Documents/Radiology/IHE_RAD_Suppl_IID.pdf)."""
* ^status = #draft
* ^date = "2025-05-14T15:47:13+02:00"
* ^publisher = "HL7 Europe"
* ^contact.name = "HL7 Europe"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.eu"
* ^jurisdiction = $m49.htm#150 "Europe"
* ^copyright = "Used by permission of HL7 Europe, all rights reserved Creative Commons License"
* ^url = "http://hl7.eu/fhir/imaging-r5/StructureDefinition/ImImageIidViewerEndpoint"
* connectionType ^slicing.discriminator.type = #value
* connectionType ^slicing.discriminator.path = "coding"
* connectionType ^slicing.ordered = false
* connectionType ^slicing.rules = #open
* connectionType contains iid 1..1
* connectionType[iid] = $codesystem-endpoint-terminology#ihe-iid "IHE IID endpoint"
* payload 1..
* payload.type 1..1
* payload.type.text = "IHE IID"
* payload.mimeType ^slicing.discriminator.type = #value
* payload.mimeType ^slicing.discriminator.path = "$this"
* payload.mimeType ^slicing.ordered = false
* payload.mimeType ^slicing.rules = #open
* payload.mimeType contains text-html 1..1
* payload.mimeType[text-html] = #text/html
