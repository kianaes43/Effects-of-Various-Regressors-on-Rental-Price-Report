*Kiana Scott (89724040), Arsal Shazad (82357745), Kenneth Zamudio (53945772), Krishna Tenneti (17524072)

*find any large discrepencies in the data
summarize

*find missing values
codebook

*drop the missing variables 
drop if missing(rooms)
drop if missing(ageinyears)

*generate new variables in order to clean dataset
egen mean=mean(sellingprice)
egen sd=sd(sellingprice)
gen Z=mean+3*sd 
gen outlier=(sellingprice>=Z)

*cleaning the outliers from the dataset
drop if outlier==1

*creating a scatterplot to see the new model
scatter sellingprice distancetoCBDfeet distancetointerstatefeet rooms squarefootageofhouse squarefootagelot bathrooms ageinyears zone0 zone1 zone2 zone3 zone4 zone5 year2021, title("House Dataset") xtitle("Years") ytitle("Rent (thousands of dollars)")

*running a regression after cleaning the datas
regress sellingprice squarefootageofhouse ageinyears bathrooms rooms squarefootagelot distancetointerstatefeet distancetoCBDfeet zone0 zone1 zone2 zone3 zone4 zone5 year2021, robust

gen zone0 = (neighborhood == 0)
gen zone1 = (neighborhood == 1)
gen zone2 = (neighborhood == 2)
gen zone3 = (neighborhood == 3)
gen zone4 = (neighborhood == 4)
gen zone5 = (neighborhood == 5)
gen zone6 = (neighborhood == 6)

gen byte year2023 = year == 2023
gen byte year2021 = year == 2021

vif

*finding the adjusted R^2 of our regression
di e(r2_a)

*generate new variable to see interaction between ageinyears and distancetoCBDfeet
gen ageCBD = ageinyears*distancetoCBDfeet

regress sellingprice ageinyears distancetoCBDfeet ageCBD 

vif


