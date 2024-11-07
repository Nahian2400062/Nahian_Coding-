** Data Cleaning

import excel "C:\Users\Ibnat_Nahian\Desktop\Assignment_AsiaIndustry\raw\usa-imports.xls", sheet("FRED Graph") clear
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

drop C

generate IMP = IMP0004

drop IMP0004

rename numdate Date