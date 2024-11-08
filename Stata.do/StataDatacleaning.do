** Data Cleaning (usa-imports)
* The Graph I have is very confusing so I would like to change it and make it readable

* I wanted to use cd but it was not working so I imported the excel file from my Browser
import excel "C:\Users\Ibnat_Nahian\Desktop\Assignment_AsiaIndustry\raw\usa-imports.xls", sheet("FRED Graph")
(3 vars, 375 obs)
browse
* before the variables were A and B and to rename 
rename A observation_date
rename B IMP0004
* deleting observation 1 to 11
drop in 1/11
* destring the IMP0004
destring IMP0004, replace
* destring the observation_date
generate numdate = date(observation_date, "DMY")
format numdate %td
drop observation_date
* Deleting column
drop C
* Modifying the table by Adding new column
generate IMP = IMP0004
* Modifying the table by Deleting useless column
drop IMP0004
* Modifying the variable name
rename numdate Date