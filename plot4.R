plot4 <- function() {
  setwd("C:\\Users\\JGN\\Documents\\The Data Science Specialization\\04.- Exploratory Data Analysis\\Project1");
  dataset <- read.csv("exdata_data_household_power_consumption\\household_power_consumption.txt", header=TRUE, sep=";");
  subset1 <- subset(dataset, dataset$Date == "1/2/2007" | dataset$Date == "2/2/2007");
  
  # Set to paint 4 grafics
  par(mfcol = c(2,2));
  
  # 1 - Global Active Power (kilowatts)
  plot(strptime(paste(subset1$Date, subset1$Time, sep=" "), format="%d/%m/%Y %H:%M:%S"), as.numeric(as.character(subset1$Global_active_power)), type="l", main="", ylab="Global Active Power (kilowatts)", xlab="");
  
  # 2- Energy sub metering
  plot(strptime(paste(subset1$Date, subset1$Time, sep=" "), format="%d/%m/%Y %H:%M:%S"), as.numeric(as.character(subset1$Sub_metering_1)), type="l", main="", ylab="Energy sub metering", xlab="", col="black");
  lines(strptime(paste(subset1$Date, subset1$Time, sep=" "), format="%d/%m/%Y %H:%M:%S"), as.numeric(as.character(subset1$Sub_metering_2)), type="l", main="", ylab="Energy sub metering", xlab="", col="red");
  lines(strptime(paste(subset1$Date, subset1$Time, sep=" "), format="%d/%m/%Y %H:%M:%S"), as.numeric(as.character(subset1$Sub_metering_3)), type="l", main="", ylab="Energy sub metering", xlab="", col="blue");  
  legend("topright", legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), cex=0.4, col = 1:3, lty = 1:1, bty = "n");

  # 3 - Voltage
  plot(strptime(paste(subset1$Date, subset1$Time, sep=" "), format="%d/%m/%Y %H:%M:%S"), as.numeric(as.character(subset1$Voltage)), type="l", main="", ylab="Voltage", xlab="datetime");
    
  # 4 - Global_reactive_power
  plot(strptime(paste(subset1$Date, subset1$Time, sep=" "), format="%d/%m/%Y %H:%M:%S"), as.numeric(as.character(subset1$Global_reactive_power)), type="l", main="", ylab="Global_reactive_power", xlab="datetime");
  
  dev.copy(png, "plot4.png", width=480, height=480);
  dev.off();
}