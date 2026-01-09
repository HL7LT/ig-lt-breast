Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $v3-ParticipationType = http://terminology.hl7.org/CodeSystem/v3-ParticipationType
Alias: $im-study-instance-uid-identifier = http://hl7.eu/fhir/imaging-r5/StructureDefinition/im-study-instance-uid-identifier
Alias: $patient-eu = http://hl7.eu/fhir/base-r5/StructureDefinition/patient-eu
Alias: $ImOrder = http://hl7.eu/fhir/imaging-r5/StructureDefinition/ImOrder
Alias: $im-accession-number-identifier = http://hl7.eu/fhir/imaging-r5/StructureDefinition/im-accession-number-identifier
Alias: $ImWadoEndpoint = http://hl7.eu/fhir/imaging-r5/StructureDefinition/ImWadoEndpoint
Alias: $ImImageIidViewerEndpoint = http://hl7.eu/fhir/imaging-r5/StructureDefinition/ImImageIidViewerEndpoint
Alias: $practitionerRole-eu = http://hl7.eu/fhir/base-r5/StructureDefinition/practitionerRole-eu
Alias: $ImImagingDevice = http://hl7.eu/fhir/imaging-r5/StructureDefinition/ImImagingDevice
Alias: $organization-eu = http://hl7.eu/fhir/base-r5/StructureDefinition/organization-eu
Alias: $instance-description = http://hl7.eu/fhir/imaging-r5/StructureDefinition/instance-description
Alias: $im-imaging-study-performer-type = http://hl7.eu/fhir/imaging-r5/ValueSet/im-imaging-study-performer-type

Profile: ImImagingStudy
Parent: ImagingStudy
Id: ImImagingStudy
Title: "IM Imaging Study"
Description: "This profile represents an imaging study instance."
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
* ^url = "http://hl7.eu/fhir/imaging-r5/StructureDefinition/ImImagingStudy"
* obeys im-imagingstudy-01
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier ^slicing.rules = #open
* identifier contains studyInstanceUid 1..1
* identifier[studyInstanceUid] only $im-study-instance-uid-identifier
* subject only Reference($patient-eu or Device)
* basedOn ^slicing.discriminator.type = #type
* basedOn ^slicing.discriminator.path = "$this"
* basedOn ^slicing.ordered = false
* basedOn ^slicing.rules = #open
* basedOn contains imorderaccession 0..1
* basedOn[imorderaccession] only Reference($ImOrder)
* basedOn[imorderaccession].identifier 1..
* basedOn[imorderaccession].identifier only $im-accession-number-identifier
* endpoint ^slicing.discriminator.type = #profile
* endpoint ^slicing.discriminator.path = "$this"
* endpoint ^slicing.ordered = false
* endpoint ^slicing.rules = #open
* endpoint contains
    wado 0..1 and
    iid 0..1
* endpoint[wado] only Reference($ImWadoEndpoint)
* endpoint[iid] only Reference($ImImageIidViewerEndpoint)
* series.endpoint ^slicing.discriminator.type = #profile
* series.endpoint ^slicing.discriminator.path = "$this"
* series.endpoint ^slicing.ordered = false
* series.endpoint ^slicing.rules = #open
* series.endpoint contains
    wado 0..1 and
    iid 0..1
* series.endpoint[wado] only Reference($ImWadoEndpoint)
* series.endpoint[iid] only Reference($ImImageIidViewerEndpoint)
* series.performer ^slicing.discriminator.type = #type
* series.performer ^slicing.discriminator.path = "actor"
* series.performer ^slicing.ordered = false
* series.performer ^slicing.rules = #open
* series.performer.function from $im-imaging-study-performer-type (extensible)
* series.performer contains
    performer 0..1 and
    device 0..1 and
    custodian 0..1
* series.performer[performer].function = $v3-ParticipationType#PRF
* series.performer[performer].actor only Reference($practitionerRole-eu)
* series.performer[device].function = $v3-ParticipationType#DEV
* series.performer[device].actor only Reference($ImImagingDevice)
* series.performer[custodian].function = $v3-ParticipationType#CST
* series.performer[custodian].actor only Reference($organization-eu)
* series.instance.extension contains $instance-description named instance-description 0..1

Invariant: im-imagingstudy-01
Description: "A DICOM instance UID must start with 'urn:oid:'"
* severity = #warning
* expression = "identifier.where(system='urn:dicom:uid').value.startsWith('urn:oid:')"
