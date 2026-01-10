Profile: ImKeyImageDocumentReference
Parent: $EuDocumentReference
Id: ImKeyImageDocumentReference
Title: "IM Key Image Document Reference"
Description: """A document containing key images for a patient. It can refer to a DICOM or non-DICOM image. When referring to a DICOM image, the DocumentReference.content.attachment.url should be a WADO-URI. When referring to a non-DICOM image, the DocumentReference.content.attachment.url should be a direct URL to the image.

When the resource represents a DICOM instance it SHALL contain a the SOP Instance UID in the identifier element. When the resource represents a DICOM series it SHALL contain the Series Instance UID in the identifier element. """
* ^status = #draft
* ^date = "2025-05-14T15:47:13+02:00"
* ^publisher = "HL7 Europe"
* ^contact.name = "HL7 Europe"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.eu"
* ^jurisdiction = $m49.htm#150 "Europe"
* ^copyright = "Used by permission of HL7 Europe, all rights reserved Creative Commons License"
* ^url = $DocumentReferenceKeyImageEuImagingUrl
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.ordered = false
* identifier ^slicing.rules = #open
* identifier contains
    seriesInstanceUid 0..1 and
    sopClassInstanceUid 0..1
* identifier[seriesInstanceUid].type 1..
* identifier[seriesInstanceUid].type = $codesystem-missing-dicom-terminology#00080018
* identifier[seriesInstanceUid].system 1..
* identifier[seriesInstanceUid].system = "urn:ietf:rfc:3986"
* identifier[seriesInstanceUid].value 1..
* identifier[sopClassInstanceUid].type 1..
* identifier[sopClassInstanceUid].type = $dcm#112002
* identifier[sopClassInstanceUid].system 1..
* identifier[sopClassInstanceUid].system = "urn:ietf:rfc:3986"
* identifier[sopClassInstanceUid].value 1..
* basedOn ^slicing.discriminator.type = #type
* basedOn ^slicing.discriminator.path = "$this"
* basedOn ^slicing.ordered = false
* basedOn ^slicing.rules = #open
* basedOn contains imorderaccession 0..1
* basedOn[imorderaccession] only Reference($OrderEuImagingUrl)
* basedOn[imorderaccession].identifier 1..
* basedOn[imorderaccession].identifier only $AccessionNumberIdentifierEuImagingUrl
* modality 1..1
* category ^slicing.discriminator.type = #profile
* category ^slicing.discriminator.path = "$this"
* category ^slicing.ordered = false
* category ^slicing.rules = #open
* category contains imkeyimages 1..1
* category[imkeyimages].coding ^slicing.discriminator.type = #value
* category[imkeyimages].coding ^slicing.discriminator.path = "$this"
* category[imkeyimages].coding ^slicing.ordered = false
* category[imkeyimages].coding ^slicing.rules = #open
* category[imkeyimages].coding contains keyimagecode 1..1
* category[imkeyimages].coding[keyimagecode] = $loinc#55113-5 "Key images Document Radiology"
* subject 1..
* subject only Reference($EuPatientUrl)
* author ^slicing.discriminator.type = #profile
* author ^slicing.discriminator.path = "$this"
* author ^slicing.ordered = false
* author ^slicing.rules = #open
* author contains performer 0..*
* author[performer] only Reference($EuPractitionerRoleUrl)
* content ^slicing.discriminator.type = #value
* content ^slicing.discriminator.path = "extension.value"
* content ^slicing.ordered = false
* content ^slicing.rules = #open
* content contains
    thumbnail 0..1 and
    content 1..1
* content[thumbnail].extension 1..
* content[thumbnail].extension contains DRThumbnail named thumbnail 1..1
* content[thumbnail].extension[thumbnail].value[x] = true
* content[content].extension 1..
* content[content].extension contains DRThumbnail named thumbnail 1..1
* content[content].extension[thumbnail].value[x] = false
* content[content].attachment.url 1..
