// NOTE: This ValueSet is also defined in ig-lt-base (finding-evolution-lt.fsh).
// Remove this file after ig-lt-base is published with FindingEvolutionVS included.
ValueSet: FindingEvolutionVS
Id: finding-evolution
Title: "Finding Evolution"
Description: "Evolution of findings across screening and diagnostic procedures — indicates whether a finding is new, changed, stable, or absent compared to prior examinations."
* ^url = $finding-evolution-vs-url
* ^status = #active
* ^experimental = false
* ^language = #en
* ^publisher = "HL7 Lithuania"
* $sct#7147002 "New"
* $sct#35105006 "Increased"
* $sct#1250004 "Decreased"
* $sct#260388006 "No status change"
* $sct#373572006 "Clinical finding absent"
