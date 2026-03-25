CodeSystem: BreastQuestionnaireOptions
Id: breast-questionnaire-options
Title: "Breast questionnaire answer options (illustrative)"
Description: "Illustrative codes for Questionnaire answer options used in breast ESPBI-style forms. Register or replace with national coded values in production."
* ^url = $breast-questionnaire-options-cs-url
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^publisher = "HL7 Lithuania"

// --- Yes / No / Unknown ---
* #yes "Yes"
* #no "No"
* #unknown "Unknown"

// --- ACR Breast Density ---
* #acr-a "ACR A – Almost entirely fatty"
* #acr-b "ACR B – Scattered areas of fibroglandular density"
* #acr-c "ACR C – Heterogeneously dense"
* #acr-d "ACR D – Extremely dense"

// --- BI-RADS Conclusion ---
* #birads-0 "BI-RADS 0 – Incomplete examination"
* #birads-1 "BI-RADS 1 – No changes found"
* #birads-2 "BI-RADS 2 – Benign changes found"
* #birads-3 "BI-RADS 3 – Possibly benign changes"
* #birads-4 "BI-RADS 4 – Suspicious malignant finding"
* #birads-5 "BI-RADS 5 – Highly probable malignant finding"

// --- Mammographic / Tomosynthesis finding type ---
* #finding-formation "Formation (mass)"
* #finding-calcification "Calcification"
* #finding-deformation "Architectural deformation"
* #finding-asymmetry "Focal asymmetric tissue"

// --- Finding dynamics ---
* #dynamics-none "Image without negative dynamics"
* #dynamics-negative "Negative dynamics observed"

// --- Biopsy guidance type ---
* #biopsy-us-guided "Biopsy under ultrasound guidance"
* #biopsy-xray-guided "Biopsy under X-ray guidance"

// --- Ultrasound parenchyma structure ---
* #parenchyma-fatty "Homogeneous adipose tissue"
* #parenchyma-fibroglandular "Homogeneous fibroglandular"
* #parenchyma-heterogeneous "Heterogeneous"

// --- Ultrasound lesion nature ---
* #nature-cyst "Cyst"
* #nature-lymph-node "Breast lymph node"
* #nature-fibroadenoma "Fibroadenoma"
* #nature-papilloma "Papilloma"
* #nature-lipoma "Lipoma"
* #nature-malignant "Tumor (malignant)"
* #nature-abscess "Abscess"
* #nature-other "Other (free text)"

// --- Duct condition ---
* #ducts-normal "Ducts not expanded"
* #ducts-expanded "Ducts expanded"

// --- Laterality ---
* #right "Right"
* #left "Left"

// --- Lymph node level ---
* #ln-level-n1 "N1"
* #ln-level-n2 "N2"
* #ln-level-n3 "N3"

// --- Specimen fixation ---
* #fixation-formalin "Fixed (10% formalin buffered solution)"
* #fixation-unfixed "Unfixed"

// --- Previous procedures ---
* #proc-none "No important information"
* #proc-biopsy "Biopsy"
* #proc-excision "Excision"
* #proc-other-operation "Other operation"
* #proc-chemotherapy "Chemotherapy"
* #proc-radiation "Radiation (breast)"
* #proc-immunotherapy "Immunotherapy"

// --- Operation / procedure type ---
* #op-thick-needle-biopsy "Thick needle biopsy"
* #op-excision "Excision"
* #op-other "Other (free text)"

// --- IHC Estrogen / Progesterone receptor ---
* #ihc-negative "Negative"
* #ihc-weak "Weak (+)"
* #ihc-moderate "Moderate (++)"
* #ihc-strong "Strong (+++)"

// --- HER2 IHC ---
* #her2-negative "HER2: expression absent (0)"
* #her2-low "HER2: low immunohistochemical expression (1+)"
* #her2-borderline "HER2: expression borderline (2+)"
* #her2-positive "HER2: expression positive (3+)"

// --- HER2 evaluation ---
* #her2-eval-0 "HER2 evaluation: 0+"
* #her2-eval-1 "HER2 evaluation: 1+"
* #her2-eval-2 "HER2 evaluation: 2+"
* #her2-eval-3 "HER2 evaluation: 3+"

// --- FISH results ---
* #fish-amplified "FISH: HER2 amplified"
* #fish-amplified-clusters "FISH: amplified (clusters)"
* #fish-co-amplified "FISH: co-amplified (HER2>=6, HER2/CEP17<2)"
* #fish-borderline "FISH: borderline (4<=HER2<6, HER2/CEP17<2)"
* #fish-monosomic "FISH: monosomic (HER2<4, HER2/CEP17>=2)"
* #fish-negative "FISH: negative (HER2<4, HER2/CEP17<2)"
* #fish-not-evaluated "FISH: not to be evaluated"

// --- CISH/SISH results ---
* #cish-amplified "CISH/SISH: HER2 amplified"
* #cish-not-amplified "CISH/SISH: HER2 not amplified"
* #cish-not-evaluated "CISH/SISH: not to be evaluated"

// --- Tumour grading ---
* #grade-g1 "G1 (well-differentiated)"
* #grade-g2 "G2 (moderately differentiated)"
* #grade-g3 "G3 (poorly differentiated)"
* #grade-gx "Gx (degree of differentiation undetermined)"

// --- Lymphovascular invasion ---
* #lvi-0 "pLVI-0: not detected"
* #lvi-1 "pLVI-1: spreading, otherwise unclassified"
* #lvi-2 "pLVI-2: only in lymphatic vessels and small blood vessels"
* #lvi-3 "pLVI-3: only in veins (large, thick-walled blood vessels)"
* #lvi-4 "pLVI-4: present in both lymphatic vessels and veins"
* #lvi-9 "pLVI-9: undetectable/unknown"

// --- Breast quadrant (short codes for questionnaire answers) ---
* #uoq "Upper outer quadrant"
* #uiq "Upper inner quadrant"
* #loq "Lower outer quadrant"
* #liq "Lower inner quadrant"

// --- Recommendations ---
* #rec-mammographic-control "Mammographic control"
* #rec-additional-mammography "Additional mammography"
* #rec-spot-compression "Local compression with magnification"
* #rec-ultrasound "Ultrasound examination"
* #rec-breast-specialist "Breast specialist consultation"
* #rec-consultation "Consultation with breast specialist"
* #rec-biopsy-ultrasound "Biopsy under ultrasound"
* #rec-biopsy "Biopsy indicated"
* #rec-stereotactic-biopsy "Stereotactic biopsy"
* #rec-mri "MRI examination"
* #rec-next-mammography "Next mammography after N months"
* #rec-follow-up-6m "Follow-up in 6 months"
* #rec-biopsy-indicated "Biopsy indicated"
