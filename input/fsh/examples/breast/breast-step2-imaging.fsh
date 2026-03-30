Instance: encounter-breast-step2-imaging-example
InstanceOf: EncounterLt
Usage: #example
Title: "Encounter: Breast Imaging Acquisition Step 2 (example)"
Description: "Ambulatory encounter for breast imaging acquisition including mammography, imaging studies, and radiation dose recording."
* status = #completed
* class = $v3-ActCode#AMB "Ambulatory"
* subject = Reference(example-patient-female)
* participant
  * type = $v3-ParticipationType#ATND "attender"
  * actor = Reference(example-practitioner)
* actualPeriod
  * start = "2024-06-15T10:05:00+03:00"
  * end = "2024-06-15T10:30:00+03:00"
* serviceProvider = Reference(example-organization)

Instance: procedure-mammography-example
InstanceOf: ProcedureLt
Usage: #example
Title: "Procedure: Mammography (example)"
Description: "Bilateral digital mammography procedure during imaging acquisition."
* status = #completed
* code = $sct#71651007 "Mammography (procedure)"
* subject = Reference(example-patient-female)
* encounter = Reference(encounter-breast-step2-imaging-example)
* occurrenceDateTime = "2024-06-15T10:10:00+03:00"
* performer.actor = Reference(example-practitioner)

Instance: imagingstudy-mammography-example
InstanceOf: ImagingStudyLt
Usage: #example
Title: "ImagingStudy: Mammography (example)"
Description: "Mammography imaging study with bilateral breast series."
* identifier.system = "urn:dicom:uid"
* identifier.value = "urn:oid:1.2.840.113619.2.55.3.604688654.9999"
* status = #available
* subject = Reference(example-patient-female)
* encounter = Reference(encounter-breast-step2-imaging-example)
* started = "2024-06-15T10:10:00+03:00"
* modality = $dicom-dcm#MG "Mammography"
* series[0].uid = "1.2.840.113619.2.55.3.604688654.1234"
* series[0].modality = $dicom-dcm#MG "Mammography"
* series[0].bodySite = $sct#76752008 "Breast structure"

Instance: imagingstudy-mammography-previous-example
InstanceOf: ImagingStudyLt
Usage: #example
Title: "ImagingStudy: Previous Mammography (example)"
Description: "Prior mammography study used for comparison in the current evaluation."
* identifier.system = "urn:dicom:uid"
* identifier.value = "urn:oid:1.2.840.113619.2.55.3.604688654.8888"
* status = #available
* subject = Reference(example-patient-female)
* encounter = Reference(encounter-breast-step2-imaging-example)
* started = "2023-05-11T10:10:00+03:00"
* modality = $dicom-dcm#MG "Mammography"
* series[0].uid = "1.2.840.113619.2.55.3.604688654.1234"
* series[0].modality = $dicom-dcm#MG "Mammography"
* series[0].bodySite = $sct#76752008 "Breast structure"


Instance: observation-radiation-dose-example
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Radiation Dose (example)"
Description: "Radiation dose of 2.5 mGy recorded during the mammography procedure."
* status = #final
* category = $observation-category#imaging "Imaging"
* code = $sct#363787002 "Observable entity"
* subject = Reference(example-patient-female)
* encounter = Reference(encounter-breast-step2-imaging-example)
* effectiveDateTime = "2024-06-15T10:15:00+03:00"
* valueQuantity = 2.5 'mGy' "milligray"

Instance: careplan-breast-followup-example
InstanceOf: CarePlanLt
Usage: #example
Title: "CarePlan: Breast Follow-up (example)"
Description: "Follow-up care plan for breast screening with BI-RADS-based recommendations."
* status = #active
* intent = #plan
* subject = Reference(example-patient-female)
* encounter = Reference(encounter-breast-step2-imaging-example)
