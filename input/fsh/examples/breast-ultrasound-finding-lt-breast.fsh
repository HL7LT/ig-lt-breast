Instance: observation-lesion-right-10-oclock-cyst-example
InstanceOf: BreastUltrasoundFindingLtBreast
Usage: #example
Title: "Observation: Breast Lesion – Right Cyst (example)"
Description: "Ultrasound finding of a cyst in the right breast at 10 o'clock."
* status = #final
* subject = Reference(example-patient-female)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* bodySite = $sct#73056007 "Right breast"
* component[lesion].valueCodeableConcept = $sct#399294002 "Cyst of breast (disorder)"
* component[clock-position].valueCodeableConcept = $sct#260322009 "10 o'clock position (qualifier value)"
* component[length-mm].valueQuantity = 12 'mm'
* component[width-mm].valueQuantity = 7 'mm'
* note.text = "Smooth, round shape"
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable

Instance: observation-lesion-left-3-oclock-fibroadenoma-example
InstanceOf: BreastUltrasoundFindingLtBreast
Usage: #example
Title: "Observation: Lesion – Left Fibroadenoma (example)"
Description: "Ultrasound finding of a fibroadenoma in the left breast at 3 o'clock."
* status = #final
* subject = Reference(example-patient-female)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* bodySite = $sct#80248007 "Left breast"
* component[lesion].valueCodeableConcept = $sct#254845004 "Fibroadenoma of breast (disorder)"
* component[clock-position].valueCodeableConcept = $sct#260330005 "3 o'clock position (qualifier value)"
* component[length-mm].valueQuantity = 8 'mm'
* component[width-mm].valueQuantity = 5 'mm'
* note.text = "Oval shape"
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable

Instance: observation-lesion-right-6-oclock-malignant-example
InstanceOf: BreastUltrasoundFindingLtBreast
Usage: #example
Title: "Observation: Lesion – Right Malignant Tumor (example)"
Description: "Ultrasound finding of a malignant tumor in the right breast at 6 o'clock."
* status = #final
* subject = Reference(example-patient-female)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* bodySite = $sct#73056007 "Right breast"
* component[lesion].valueCodeableConcept = $sct#254837009 "Malignant neoplasm of breast (disorder)"
* component[clock-position].valueCodeableConcept = $sct#260337008 "6 o'clock position (qualifier value)"
* component[length-mm].valueQuantity = 15 'mm'
* component[width-mm].valueQuantity = 10 'mm'
* note.text = "Irregular shape"
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable
