// Example: Breast ADP Diagnostic Process Summary (Composition)
Instance: breast-adp-process-composition-example
InstanceOf: Composition
Usage: #example
Title: "Example – Breast Cancer ADP Diagnostic Process Summary"
Description: "An example Composition summarizing the diagnostic process of the Breast Cancer Prevention Program episode."

* status = #final
* type = $loinc#34133-9 "Summary of episode note"
* subject = Reference(example-patient)
* date = "2026-01-10T10:00:00+02:00"
* title = "Breast Cancer Prevention Program – Diagnostic Process Summary"
* author = Reference(Organization/example-hospital)

// Screening Mammogram
* section[+].title = "Screening Mammogram"
* section[=].code = $sct#71651007 "Mammography (procedure)"
* section[=].entry[+] = Reference(mammogram-diagnosticreport-example)

// Additional Imaging
* section[+].title = "Additional Imaging"

// Tomosynthesis
* section[=].section[+].title = "Tomosynthesis"
* section[=].section[=].entry[+] = Reference(tomosynthesis-diagnosticreport-example)

// Ultrasound
* section[=].section[+].title = "Ultrasound Examination"
* section[=].section[=].entry[+] = Reference(ultrasound-diagnosticreport-example)

// Biopsy
* section[+].title = "Biopsy"
* section[=].code = $sct#44578009 "Core needle biopsy of breast (procedure)"
* section[=].entry[+] = Reference(biopsy-procedure-example)
* section[=].entry[+] = Reference(pathology-servicerequest-example)

// Pathological Examination
* section[+].title = "Pathological Examination"
* section[=].code = $sct#252416005 "Histopathology test (procedure)"
* section[=].entry[+] = Reference(pathology-diagnosticreport-example)

// Conclusion & Recommendations
* section[+].title = "Conclusion and Recommendations"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Suspicious lesion detected in right breast. Biopsy confirmed invasive ductal carcinoma. Referral to oncology recommended.</div>"
