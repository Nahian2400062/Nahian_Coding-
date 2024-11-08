** Graph 
* I will use the already cleaned data
use "C:\Users\Ibnat_Nahian\Desktop\Assignment_AsiaIndustry\raw\USA_import.clean.dta"
browse

* giving the data a visual appearance, what better than Histogram
hist IMP
*  save the Beautiful Histogram/ Graph before it gets lost
graph save "Graph" "C:\Users\Ibnat_Nahian\Desktop\Assignment_AsiaIndustry\raw\Graph.gph"
graph export "import.png", replace