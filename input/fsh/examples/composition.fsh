Instance: breast-adp-process-composition-example
InstanceOf: Composition
Usage: #example
Title: "Example – Breast Cancer ADP Diagnostic Process Summary"
Description: "An example Composition summarizing the diagnostic process of the Breast Cancer Prevention Program episode."

* status = #final
* type = $lt-adp-doc-types#breast-process "Breast cancer ADP diagnostic process summary"
* subject = Reference(example-patient)
* date = "2026-01-10T10:00:00+02:00"
* title = "Breast Cancer Prevention Program – Diagnostic Process Summary"
* confidentiality = #N
* author = Reference(Organization/example-hospital)

// Mammogram
* section[+].title = "Screening Mammogram"
* section[=].code = $sct#241055006 "Mammography (procedure)"
* section[=].entry[+] = Reference(mammogram-diagnosticreport-example)

// Additional imaging
* section[+].title = "Additional Imaging"
* section[=].section[+].title = "Tomosynthesis"
* section[=].section[=].entry[+] = Reference(tomosynthesis-diagnosticreport-example)
* section[=].section[+].title = "Ultrasound Examination"
* section[=].section[=].entry[+] = Reference(ultrasound-diagnosticreport-example)

// Biopsy
* section[+].title = "Biopsy"
* section[=].code = $sct#44578009 "Core needle biopsy of breast (procedure)"
* section[=].entry[+] = Reference(biopsy-procedure-example)
* section[=].entry[+] = Reference(pathology-servicerequest-example)

// Pathology
* section[+].title = "Pathological Examination"
* section[=].code = $sct#108252007 "Histopathology (procedure)"
* section[=].entry[+] = Reference(pathology-diagnosticreport-example)

// Summary
* section[+].title = "Conclusion and Recommendations"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Suspicious lesion detected in right breast. Biopsy confirmed invasive ductal carcinoma. Referral to oncology recommended.</div>"
