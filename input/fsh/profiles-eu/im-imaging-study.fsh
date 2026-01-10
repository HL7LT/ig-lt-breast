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
* ^url = $ImagingStudyEuImagingUrl
* obeys im-imagingstudy-01
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier ^slicing.rules = #open
* identifier contains studyInstanceUid 1..1
* identifier[studyInstanceUid] only $StudyInstanceUidIdentifierEuImagingUrl
* subject only Reference($EuPatientUrl or Device)
* basedOn ^slicing.discriminator.type = #type
* basedOn ^slicing.discriminator.path = "$this"
* basedOn ^slicing.ordered = false
* basedOn ^slicing.rules = #open
* basedOn contains imorderaccession 0..1
* basedOn[imorderaccession] only Reference($OrderEuImagingUrl)
* basedOn[imorderaccession].identifier 1..
* basedOn[imorderaccession].identifier only $AccessionNumberIdentifierEuImagingUrl
* endpoint ^slicing.discriminator.type = #profile
* endpoint ^slicing.discriminator.path = "$this"
* endpoint ^slicing.ordered = false
* endpoint ^slicing.rules = #open
* endpoint contains
    wado 0..1 and
    iid 0..1
* endpoint[wado] only Reference($EndpointWadoEuImagingUrl)
* endpoint[iid] only Reference($EndpointImageIidViewerEuImagingUrl)
* series.endpoint ^slicing.discriminator.type = #profile
* series.endpoint ^slicing.discriminator.path = "$this"
* series.endpoint ^slicing.ordered = false
* series.endpoint ^slicing.rules = #open
* series.endpoint contains
    wado 0..1 and
    iid 0..1
* series.endpoint[wado] only Reference($EndpointWadoEuImagingUrl)
* series.endpoint[iid] only Reference($EndpointImageIidViewerEuImagingUrl)
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
* series.performer[performer].actor only Reference($EuPractitionerRoleUrl)
* series.performer[device].function = $v3-ParticipationType#DEV
* series.performer[device].actor only Reference($ImagingDeviceEuImagingUrl)
* series.performer[custodian].function = $v3-ParticipationType#CST
* series.performer[custodian].actor only Reference($EuOrganizationUrl)
* series.instance.extension contains $ImagingStudyInstanceDescriptionEuImagingUrl named instance-description 0..1

Invariant: im-imagingstudy-01
Description: "A DICOM instance UID must start with 'urn:oid:'"
* severity = #warning
* expression = "identifier.where(system='urn:dicom:uid').value.startsWith('urn:oid:')"
