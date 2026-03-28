CodeSystem: SnomedBreastExtension
Id: snomed-breast-extension
Title: "SNOMED Breast Extension"
Description: "Extension codes for breast diagnostics concepts not yet available in SNOMED CT. These codes are intended to be replaced by official SNOMED CT codes when they become available."
* ^url = $snomed-breast-extension-cs-url
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^publisher = "HL7 Lithuania"

// --- Ultrasound parenchyma structure ---
* #parenchyma-fatty "Homogeneous adipose tissue"
    "Ultrasound breast parenchyma structure: homogeneous adipose tissue"
* #parenchyma-fibroglandular "Homogeneous fibroglandular"
    "Ultrasound breast parenchyma structure: homogeneous fibroglandular tissue"
* #parenchyma-heterogeneous "Heterogeneous"
    "Ultrasound breast parenchyma structure: heterogeneous tissue"

// --- Duct condition ---
* #ducts-normal "Ducts not expanded"
    "Breast duct condition: ducts not expanded (normal)"
* #ducts-expanded "Ducts expanded"
    "Breast duct condition: ducts expanded (dilated)"
