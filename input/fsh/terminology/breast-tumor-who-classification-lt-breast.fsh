ValueSet: BreastTumorWhoClassificationVS
Id: breast-tumor-who-classification
Title: "WHO Breast Tumor Classification"
Description: "Breast tumor pathological diagnosis codes according to the WHO Classification of Tumours, 5th edition. Used for pathological histological examination conclusion/diagnosis in the breast cancer prevention program."
* ^url = $breast-tumor-who-classification-vs-url
* ^status = #draft
* ^experimental = true
* ^publisher = "HL7 Lithuania"

// --- Normal ---
* $sct#290084006 "Breast normal (finding)"

// --- Benign epithelial changes ---
* $sct#472906008 "Usual ductal hyperplasia (morphologic abnormality)"
* $sct#55465005 "Columnar cell atypia (morphologic abnormality)"
* $sct#6660000 "Atypical intraductal hyperplasia (morphologic abnormality)"

// --- Adenosis and benign sclerosing changes ---
* $sct#50916005 "Fibrosing adenosis (morphologic abnormality)"
* $sct#36318001 "Apocrine adenoma (morphologic abnormality)"
* $sct#133855003 "Radial scar (morphologic abnormality)"

// --- Adenomas ---
* $sct#1156654007 "Benign tubular adenoma (morphologic abnormality)"
* $sct#128651002 "Lactating adenoma (morphologic abnormality)"
* $sct#5244003 "Intraductal papilloma (morphologic abnormality)"

// --- Epithelial-myoepithelial tumors ---
* $sct#8360001 "Pleomorphic adenoma (morphologic abnormality)"
* $sct#128765009 "Adenomyoepithelioma (morphologic abnormality)"
* $sct#703644009 "Adenomyoepithelioma with carcinoma (morphologic abnormality)"

// --- Papillary tumors ---
* $sct#30566004 "Noninfiltrating intraductal papillary adenocarcinoma (morphologic abnormality)"
* $sct#703545003 "Encapsulated papillary carcinoma (morphologic abnormality)"
* $sct#703547006 "Encapsulated papillary carcinoma with invasion (morphologic abnormality)"
* $sct#734075007 "Intraductal papillary neoplasm with invasive carcinoma (morphologic abnormality)"
* $sct#703546002 "Solid papillary carcinoma in situ (morphologic abnormality)"
* $sct#703594003 "Solid papillary carcinoma with invasion (morphologic abnormality)"

// --- Non-invasive lobular neoplasia ---
* $sct#33889003 "Atypical lobular hyperplasia (morphologic abnormality)"
* $sct#77284006 "Lobular carcinoma in situ (morphologic abnormality)"
* $sct#444591006 "Pleomorphic lobular carcinoma in situ (morphologic abnormality)"

// --- Non-invasive ductal carcinoma ---
* $sct#1162814007 "Non-infiltrating intraductal carcinoma (morphologic abnormality)"

// --- Invasive carcinomas ---
* $sct#82711006 "Infiltrating duct carcinoma (morphologic abnormality)"
* $sct#57596004 "Oxyphilic adenocarcinoma (morphologic abnormality)"
* $sct#74280008 "Glycogen-rich carcinoma (morphologic abnormality)"
* $sct#443933007 "Ductal carcinoma in situ with microinvasion (morphologic abnormality)"
* $sct#89740008 "Lobular carcinoma (morphologic abnormality)"
* $sct#4631006 "Tubular adenocarcinoma (morphologic abnormality)"
* $sct#30156004 "Cribriform carcinoma (morphologic abnormality)"
* $sct#72495009 "Mucinous adenocarcinoma (morphologic abnormality)"
* $sct#79143006 "Mucinous cystadenocarcinoma (morphologic abnormality)"
* $sct#703578005 "Invasive micropapillary carcinoma of breast (morphologic abnormality)"
* $sct#57141000 "Apocrine adenocarcinoma (morphologic abnormality)"
* $sct#128705006 "Metaplastic carcinoma (morphologic abnormality)"

// --- Rare and salivary gland-type tumors ---
* $sct#45410002 "Acinar cell carcinoma (morphologic abnormality)"
* $sct#11671000 "Adenoid cystic carcinoma (morphologic abnormality)"
* $sct#41919003 "Juvenile carcinoma of the breast (morphologic abnormality)"
* $sct#4079000 "Mucoepidermoid carcinoma (morphologic abnormality)"
* $sct#128702009 "Polymorphous low grade adenocarcinoma (morphologic abnormality)"

// --- Neuroendocrine tumors ---
* $sct#1286768001 "Well-differentiated neuroendocrine tumor (morphologic abnormality)"
* $sct#1286769009 "Well-differentiated neuroendocrine tumor grade 1 (morphologic abnormality)"
* $sct#1286770005 "Well-differentiated neuroendocrine tumor grade 2 (morphologic abnormality)"
* $sct#1286767006 "Neuroendocrine carcinoma (morphologic abnormality)"
* $sct#74364000 "Small cell carcinoma (morphologic abnormality)"
* $sct#128628002 "Large cell neuroendocrine carcinoma (morphologic abnormality)"

// --- Fibroepithelial tumors and hamartoma ---
* $sct#1156873009 "Benign fibroadenoma (morphologic abnormality)"
* $sct#115230008 "Fibroepithelial neoplasm (morphologic abnormality)"
* $sct#16566002 "Benign phyllodes tumor (morphologic abnormality)"
* $sct#71232009 "Borderline phyllodes tumor (morphologic abnormality)"
* $sct#87913009 "Malignant phyllodes tumor (morphologic abnormality)"
* $sct#51398009 "Hamartoma (morphologic abnormality)"

// --- Nipple tumors ---
* $sct#2985005 "Paget's disease, mammary (morphologic abnormality)"
* $sct#65787003 "Adenoma of the nipple (morphologic abnormality)"
* $sct#703552001 "Syringomatous tumor of nipple (morphologic abnormality)"

// --- Mesenchymal breast tumors: Vascular ---
* $sct#253053003 "Benign hemangioma (morphologic abnormality)"
* $sct#47669001 "Hemangiomatosis (morphologic abnormality)"
* $sct#817949008 "Atypical vascular lesion (morphologic abnormality)"
* $sct#863926008 "Angiosarcoma (morphologic abnormality)"

// --- Mesenchymal: Fibroblastic and myofibroblastic ---
* $sct#703616008 "Nodular fasciitis (morphologic abnormality)"
* $sct#128738002 "Myofibroblastoma (morphologic abnormality)"
* $sct#47284001 "Aggressive fibromatosis (morphologic abnormality)"
* $sct#1290860006 "Inflammatory myofibroblastic tumor (morphologic abnormality)"

// --- Mesenchymal: Peripheral nerve sheath ---
* $sct#985004 "Schwannoma (morphologic abnormality)"
* $sct#1156930004 "Benign neurofibroma (morphologic abnormality)"
* $sct#1336225003 "Benign granular cell tumor (morphologic abnormality)"
* $sct#13238004 "Granular cell tumor, malignant (morphologic abnormality)"

// --- Mesenchymal: Smooth muscle ---
* $sct#1162890002 "Leiomyoma (morphologic abnormality)"
* $sct#1163022006 "Leiomyosarcoma (morphologic abnormality)"

// --- Mesenchymal: Adipose tissue ---
* $sct#134328007 "Lipoma morphology (morphologic abnormality)"
* $sct#73219006 "Angiolipoma (morphologic abnormality)"
* $sct#1162815008 "Liposarcoma (morphologic abnormality)"

// --- Other mesenchymal ---
* $sct#705153001 "Pseudoangiomatous stromal hyperplasia (morphologic abnormality)"

// --- Hematolymphoid breast tumors ---
* $sct#397350003 "Extranodal marginal zone B-cell lymphoma of mucosa-associated lymphoid tissue (morphologic abnormality)"
* $sct#55150002 "Follicular lymphoma (morphologic abnormality)"
* $sct#1172695008 "Diffuse large B cell malignant lymphoma (morphologic abnormality)"
* $sct#77381001 "Burkitt lymphoma (morphologic abnormality)"
* $sct#1172730009 "Breast implant-associated anaplastic large cell lymphoma (morphologic abnormality)"

// --- Special findings ---
* $sct#125154007 "Specimen unsatisfactory for evaluation (finding)"
* $sct#56246009 "Hypertrophy (morphologic abnormality)"
