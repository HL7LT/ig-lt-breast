// Narrative mapping:
// BreastReportLtBreast aggregates the full breast diagnostic pathway into a single DiagnosticReport.
// It references BreastCompositionLtBreast for the narrative document and individual Observation results.
// Cross-IG links:
//   VitalSigns — https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/Observation-observation-blood-pressure-example.html
//   LifeStyle  — https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/Observation-observation-tobacco-smoking-consumption-example.html

Instance: diagnosticreport-breast-report-example
InstanceOf: BreastReportLtBreast
Usage: #example
Title: "DiagnosticReport: Breast Diagnostic Report (example)"
Description: "Example of a complete breast diagnostic report aggregating imaging composition, BI-RADS assessment, gland density, and mammographic findings."

* identifier.system = "http://example.org/reports"
* identifier.value = "BREAST-RPT-2026-0001"
* status = #final
* code.coding[eu-template] = $Hl7EuDocumentTypes#imaging-report-v0-0-1 "Imaging Report V0.0.1"
* code.coding[doc-type] = $sct#4231000179109 "Mammography report (record artifact)"
* category[imaging] = $loinc#18748-4 "Diagnostic imaging study"
* subject = Reference(example-patient-female)
* encounter = Reference(encounter-breast-step2-imaging-example)
* effectiveDateTime = "2026-01-10T10:00:00+02:00"
* issued = "2026-01-10T12:00:00+02:00"
* performer[author] = Reference(PractitionerRole/example-practitioner-role)
* resultsInterpreter[author] = Reference(PractitionerRole/example-practitioner-role)
* study = Reference(imagingstudy-mammography-example)
* composition = Reference(composition-breast-diagnostic-example)

// Result observations
* result[+] = Reference(observation-birads-1-negative-example)
* result[+] = Reference(observation-birads-cat4-example)
* result[+] = Reference(observation-gland-density-fatty-example)
* result[+] = Reference(observation-mammo-mass-left-uoq-example)
* result[+] = Reference(observation-breast-scar-example)
* result[+] = Reference(observation-lesion-right-10-oclock-cyst-example)

// Conclusion
* conclusion = "BI-RADS 4 right breast – suspicious abnormality. BI-RADS 1 left breast – negative. Biopsy recommended for right breast lesion."
