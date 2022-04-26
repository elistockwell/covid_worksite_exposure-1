
#convert to txt file so we can edit the raw text
file.rename("./mapinput.topojson", "./mapinput.txt")

#read new text file into R
txt <- readtext("./mapinput.txt")

#adds javascript formatting
js <- paste0("var exposures = ", txt$text)
#js<-jsonlite::minify(js) #minify the text

#write to js file
#writeLines(js, "~/GitHub/covid_worksite_exposure/docs/exposure_data.js")
writeLines(js, "./docs/exposure_data.js")

#may want to add code to delete already existing mapinput files if we are running this repeatedly

paste0(
  "Number Of Buildings Unmatched: ", 
  dim(unmatched)[1]
)
unmatched[, c(2,4)]
