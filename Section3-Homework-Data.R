#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

#Let A be revenue and B be expenses, the elements in the vectors are monthly figures

A<-c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
B<-c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Question 1: Profit for each month
A1<-round(A,0)
B1<-round(B,0)
Profit<-A1-B1
Profit

#Question 2: profit after tax for each month (the tax rate is 30%)

PAT<-round(Profit*(1-0.30),2)
PAT

#Question 3: profit margin for each month

PM<-round((PAT/A),2)*100
PM

#Question 4: months where the profit after tax was greater than and less than the mean for the year

Mean_PAT<-mean(PAT)
Mean_PAT
good.months<-PAT>Mean


bad.months<-!good.months

#Question 5: best and worst month

print("The best month is:")
best.month<-PAT==max(PAT)


print("The worst month is:")
worst.month<-PAT==min(PAT)


#Converting the dollar values above into units of thousands
revenues.1000<-round(A/1000,0)
expenses.1000<-round(B/1000)
profit.1000<-round(Profit/1000)
PAT.1000<-round(PAT/1000)

#Output

revenues.1000
expenses.1000
profit.1000
PAT.1000
good.months
bad.months
best.month
worst.month

#Matrices

m<-rbind(
  revenues.1000,
  expenses.1000,
  profit.1000,
  PAT.1000,
  good.months,
  bad.months,
  best.month,
  worst.month
)
m
