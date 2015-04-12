plot2 <- function() {
  setwd("C:\\Users\\JGN\\Documents\\The Data Science Specialization\\04.- Exploratory Data Analysis\\Project1");
  dataset <- read.csv("exdata_data_household_power_consumption\\household_power_consumption.txt", header=TRUE, sep=";");
  subset1 <- subset(dataset, dataset$Date == "1/2/2007" | dataset$Date == "2/2/2007");
  
  # Set to paint 1 grafics
  par(mfcol = c(1,1));
  
  plot(strptime(paste(subset1$Date, subset1$Time, sep=" "), format="%d/%m/%Y %H:%M:%S"), as.numeric(as.character(subset1$Global_active_power)), type="l", main="", ylab="Global Active Power (kilowatts)", xlab="");
  dev.copy(png, "plot2.png", width=480, height=480);
  dev.off();
}