library(rvest)
data_web <- read_html("http://landrecords.karnataka.gov.in/rtconline/About.aspx?dist_code=15&taluk_code=4&hobli_code=2&village_code=4&surveyno=1&surnoc=*&hissa=*")
results <- data_web %>%
  html_nodes('td:nth-child(3) , #__tab_ctl00_MainContent_Tabcontrol_TabPanel2 , #__tab_ctl00_MainContent_Tabcontrol_TabPanel1 span , #__tab_ctl00_MainContent_Tabcontrol_TabPanel2 span , #__tab_ctl00_MainContent_Tabcontrol_TabPanel3 span , #ownerdetails td+ td')  

html_text(results)



# Screenshot
install.packages("webshot")
webshot::install_phantomjs()
webshot::webshot("http://landrecords.karnataka.gov.in/rtconline/About.aspx?dist_code=15&taluk_code=4&hobli_code=2&village_code=4&surveyno=1&surnoc=*&hissa=*",
                 selector = "#ctl00_MainContent_Tabcontrol_TabPanel2",
                 "ex.png")
