Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $endpoint-connection-type = http://terminology.hl7.org/CodeSystem/endpoint-connection-type
Alias: $EndpointEu = http://hl7.eu/fhir/imaging-r5/StructureDefinition/EndpointEu

Profile: ImWadoEndpoint
Parent: $EndpointEu
Id: ImWadoEndpoint
Title: "IM WADO Endpoint"
Description: "This profile defines the WADO endpoint for accessing imaging study content."
* ^status = #draft
* ^date = "2025-05-14T15:47:13+02:00"
* ^publisher = "HL7 Europe"
* ^contact.name = "HL7 Europe"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.eu"
* ^jurisdiction = $m49.htm#150 "Europe"
* ^copyright = "Used by permission of HL7 Europe, all rights reserved Creative Commons License"
* ^url = "http://hl7.eu/fhir/imaging-r5/StructureDefinition/ImWadoEndpoint"
* connectionType ^slicing.discriminator.type = #value
* connectionType ^slicing.discriminator.path = "coding"
* connectionType ^slicing.ordered = false
* connectionType ^slicing.rules = #open
* connectionType contains wado 1..1
* connectionType[wado].coding 1..
* connectionType[wado].coding = $endpoint-connection-type#dicom-wado-rs "DICOM WADO-RS"
* payload ^slicing.discriminator.type = #value
* payload ^slicing.discriminator.path = "type"
* payload ^slicing.ordered = false
* payload ^slicing.rules = #open
* payload contains wadors 1..1
* payload[wadors].type 1..1
* payload[wadors].type = $endpoint-connection-type#dicom-wado-rs "DICOM WADO-RS"
* payload[wadors].mimeType ^slicing.discriminator.type = #value
* payload[wadors].mimeType ^slicing.discriminator.path = "$this"
* payload[wadors].mimeType ^slicing.ordered = false
* payload[wadors].mimeType ^slicing.rules = #open
* payload[wadors].mimeType contains
    dicom 1..1 and
    dicom-octet 1..1 and
    dicom-xml 1..1 and
    dicom-json 1..1 and
    image-jpg 1..1 and
    image-gif 1..1 and
    image-jp2 1..1 and
    image-jph 1..1 and
    image-jxl 1..1 and
    video-mpeg 1..1 and
    video-mp4 1..1 and
    video-H265 1..1 and
    text-html 1..1 and
    text-plain 1..1 and
    text-xml 1..1 and
    text-rtf 1..1 and
    application-pdf 1..1
* payload[wadors].mimeType[dicom] = #application/dicom
* payload[wadors].mimeType[dicom-octet] = #application/octet-stream
* payload[wadors].mimeType[dicom-xml] = #application/dicom+xml
* payload[wadors].mimeType[dicom-json] = #application/json
* payload[wadors].mimeType[image-jpg] = #image/jpg
* payload[wadors].mimeType[image-gif] = #image/gif
* payload[wadors].mimeType[image-jp2] = #image/jp2
* payload[wadors].mimeType[image-jph] = #image/jph
* payload[wadors].mimeType[image-jxl] = #image/jxl
* payload[wadors].mimeType[video-mpeg] = #video/mpeg
* payload[wadors].mimeType[video-mp4] = #video/mp4
* payload[wadors].mimeType[video-H265] = #video/H265
* payload[wadors].mimeType[text-html] = #text/html
* payload[wadors].mimeType[text-plain] = #text/plain
* payload[wadors].mimeType[text-xml] = #text/xml
* payload[wadors].mimeType[text-rtf] = #text/rtf
* payload[wadors].mimeType[application-pdf] = #application/pdf
