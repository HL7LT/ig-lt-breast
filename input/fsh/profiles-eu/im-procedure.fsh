Profile: ImProcedure
Parent: $EuProcedure
Id: ImProcedure
Title: "IM Imaging Procedure"
Description: "This profile on Procedure represents the imaging procedure."
* ^status = #draft
* ^date = "2025-05-14T15:47:13+02:00"
* ^publisher = "HL7 Europe"
* ^contact.name = "HL7 Europe"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.eu"
* ^jurisdiction = $m49.htm#150 "Europe"
* ^copyright = "Used by permission of HL7 Europe, all rights reserved Creative Commons License"
* ^url = $ProcedureEuImagingUrl
* code 1..
* code from $im-procedure-type (extensible)
* performer ^slicing.discriminator.type = #pattern
* performer ^slicing.discriminator.path = "function"
* performer ^slicing.description = "Different performers can be added to the procedure."
* performer ^slicing.ordered = false
* performer ^slicing.rules = #open
* performer.function 1..
* performer contains
    performer 0..* and
    imaging-device 0..*
* performer[performer].function.coding ^slicing.discriminator.type = #value
* performer[performer].function.coding ^slicing.discriminator.path = "\"\"$this\"\""
* performer[performer].function.coding ^slicing.ordered = false
* performer[performer].function.coding ^slicing.rules = #open
* performer[performer].function.coding contains healthcare-professional 0..1
* performer[performer].function = $sct#223366009 "Healthcare professional"
* performer[performer].actor only Reference($EuPractitionerRoleUrl)
* performer[imaging-device].function.coding ^slicing.discriminator.type = #value
* performer[imaging-device].function.coding ^slicing.discriminator.path = "\"\"$this\"\""
* performer[imaging-device].function.coding ^slicing.ordered = false
* performer[imaging-device].function.coding ^slicing.rules = #open
* performer[imaging-device].function.coding contains imaging-equipment 0..1
* performer[imaging-device].function = $sct#314789007 "Diagnostic imaging equipment"
* performer[imaging-device].actor only Reference($ImagingDeviceEuImagingUrl)

