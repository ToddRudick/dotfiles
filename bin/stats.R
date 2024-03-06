#!/usr/bin/Rscript

options(scipen=999);
numbers <- scan(file=file("stdin"), quiet=T);
numbers.mean = mean(numbers);
numbers.sd = sd(numbers);
numbers.sum = sum(numbers);
cat("Sum",numbers.sum,"\n");
cat("Mean",numbers.mean,"\n");
cat("SD",numbers.sd,"\n");
cat("Sharpe", sqrt(365) * numbers.mean / numbers.sd, "\n");
