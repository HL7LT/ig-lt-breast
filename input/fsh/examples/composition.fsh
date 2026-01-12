Instance: breast-adp-process-composition-example
InstanceOf: ImComposition
Usage: #example
Title: "Example – Breast Cancer ADP Diagnostic Process Summary"
Description: "ImComposition example summarizing the breast cancer diagnostic process."

* identifier.system = "http://example.org/documents"
* identifier.value = "BREAST-ADP-2026-0001"

* status = #final
* date = "2026-01-10T10:00:00+02:00"
* title = "Breast Cancer Prevention Program – Diagnostic Process Summary"

* subject = Reference(example-patient)
* author[author] = Reference(PractitionerRole/example-radiologist)
* custodian = Reference(Organization/example-hospital)

// Required extension
* extension[diagnosticreport-reference].valueReference = Reference(mammogram-diagnosticreport-example)

// Required events
* event[imagingstudy].detail.concept = $dcm#MG "Mammography"
* event[procedure].detail.concept = $sct#71651007 "Mammography (procedure)"


// Required sections

// Imaging Study
* section[imagingstudy].title = "Imaging Study"
* section[imagingstudy].text.status = #generated
* section[imagingstudy].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Imaging study performed.</div>"
* section[imagingstudy].entry[imagingstudy][+] = Reference(breast-imagingstudy-example)


// Order
* section[order].title = "Order"
* section[order].text.status = #generated
* section[order].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Imaging order.</div>"
* section[order].entry[order][+] = Reference(breast-imaging-order-example)


// History
* section[history].title = "History"
* section[history].text.status = #generated
* section[history].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Relevant clinical history.</div>"


// Procedure
* section[procedure].title = "Procedure"
* section[procedure].text.status = #generated
* section[procedure].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Imaging procedure performed.</div>"
* section[procedure].entry[procedure][+] = Reference(breast-imaging-procedure-example)


// Comparison
* section[comparison].title = "Comparison"
* section[comparison].text.status = #generated
* section[comparison].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Compared with prior study.</div>"
* section[comparison].entry[comparedstudy][+] = Reference(previous-breast-imagingstudy-example)


// Findings
* section[findings].title = "Findings"
* section[findings].text.status = #generated
* section[findings].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Key imaging findings.</div>"
* section[findings].entry[finding][+] = Reference(breast-finding-example)


// Impression
* section[impression].title = "Impression"
* section[impression].text.status = #generated
* section[impression].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Overall impression.</div>"
* section[impression].entry[impression][+] = Reference(breast-impression-condition-example)


// Recommendation
* section[recommendation].title = "Recommendation"
* section[recommendation].text.status = #generated
* section[recommendation].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Follow-up recommended.</div>"
* section[recommendation].entry[careplan][+] = Reference(breast-followup-careplan-example)
