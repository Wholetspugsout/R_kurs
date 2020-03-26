#                                      SEKCJA 5 - DANE


# VIDEO 33

x <- 10
x

1:100

c(1,2,3,4,5,6)

178:224

-4:4

10:1

1:10 *2


11:15 - 1:5

11:15 - 1:6


11:20 - 1:5
11:20


(1:10)^2

v <- 1:10

v^v


production_year <- 1973

year <- 2010:2019

car_per_year <- c(736, 653, 753, 876,798, 879, 860, 893, 920, 990)

year <- year - production_year
year

car_sum <- sum(car_per_year)
car_sum


car_per_year_pct = car_per_year/car_sum

car_per_year_pct = car_per_year_pct * 100
car_per_year_pct



v <- 1:10
typeof(v)

v <- v*5
v

typeof(v)

v_1 <- v * (5)
v_1

integer()

# LAB 34 

# cwiczenie 1

v_1 <- 1:10
v_1

# cwiczenie 2

v_10 <- 1:10 *10
v_10

# cwiczenie 3

v_regions <- c('France', 'Spain', 'Germanny')
v_capitals <- c('Paris', 'Madrid', 'Berlin')

?paste

paste(v_regions,"-",v_capitals)

# cwiczenie 4 

mpg_values <- mtcars$mpg
mpg_values

ltr_in_g <-  0.264
km_in_m <- 0.621

ltr_in_g <-  0.264
km_in_m <- 0.621

km_ltr_values <- mpg_values * (1 / km_in_m) / (1 / ltr_in_g)

ltr_100km <- 100 / km_ltr_values
ltr_100km


# 36 VIDEO FUNKCJE PRACUJ¥CE NA WEKTORACH

transort_type <- c('train', 'truck', 'plane', 'ship', 'other')

transport_amount <- c(129, 1354, 53, -1, 35)


mean(transport_amount)
median(transport_amount)
sd(transport_amount)
sum(transport_amount)
min(transport_amount)
max(transport_amount)

signif (
        x = transport_amount,
        digits = 3
)

abs(transport_amount)
sqrt (transport_amount^2)

old_transport_amount <- c(122, 1005, 12,3, 37)

abs(max(transport_amount)) - max(old_transport_amount)

ceiling(3.14)
floor(3.14)
trunc(3.14)
round(3.14)

transort_type <- c('train', 'truck', 'plane', 'ship', 'other', 'unknown')
transport_amount <- c(129, 1354, 53, -1, 35, NA)

mean(transport_amount, na.rm = T)

seq(1,100,10)

rep(0,10)

rep(transport_amount,3)

income_quater <- c(12,13,16,24,14,17,20,38)
diff(income_quater)
diff(income_quater, lag =4)

c1 <- cut(1:100, breaks = 4)
c1
table(c1)

c1 <- cut(1:100, breaks = seq (0,100, by = 25))
c1
table(c1)

c1 <- cut(1:100, breaks = c(0,18,24,65,100))
c1
table(c1)

# 37 LAB

# cwiczenie 1

hp <- mtcars$hp
hp

# cwiczenie 2

mean(hp)

#cwiczenie 3

median(hp)

# cwiczenie 4

sd(hp)

# cwiczenie 5

dev_factor <- (hp - median(hp))/ sd(hp)
dev_factor

# cwiczenie 6

round(dev_factor)

# cwiczenie 7

hp_breaks = cut(hp, breaks = 3)
hp_breaks
table(hp_breaks)

# cwiczenie 8

hp_breaks = cut(hp, breaks = c(0,100,150,200), na.rm = T)
hp_breaks
table(hp_breaks)

# cwiczenie 9

hp_breaks = cut(hp, breaks = c(0,100,150,200, by = max(hp)), na.rm = T)

# cwiczenie 10

hp_breaks
table(hp_breaks)

# cwiczenie 11

barplot(table(hp_breaks))

# cwiczenie 12

hp_sorted <- sort(hp)
hp_sorted

# cwiczenie 13

plot(hp_sorted)

# cwiczenie 14

diff(hp_sorted)

# cwiczenie 15

barplot(hp_sorted)


# VIDEO 39 - PRACA Z PAKIETAMI:STRINGR

stringr :: str_length('abc')

library()

install.packages('stringr')

library('stringr')

str_length('abc')



text <- 'This lesson is about package stringr'

str_sub(text, 6, 11)

str_sub(text, 2, -2)

?str_sub

str_sub(text, 21, 21) <- ' famous '
text

str_pad('R Course', width = 20, side = 'both')

title_padded <- str_pad('R Course', width = 20, side = 'both')
title_padded

str_trim(title_padded)

cities <- c('London', 'Berlin', 'Warsaw','Paris')
str_sort(cities)
cities

str_order(cities)

str_detect(cities, '^P.*')

str_subset(cities, '^P.*')

str_count(cities, 'a')

str_locate(cities, 'a')

str_replace(cities, 'a', 'A')

str_replace_all(cities, 'a', 'A')

?stringr


# LAB 40

# æwiczenie 1

library()

# cwiczenie 2

#ok

# cwiczenie 3

# ok

# cwiczenie 4

twitter <-  c("@virginamerica Need to change reservation. Have Virgin credit card. Do I need to modify on phone to waive change fee? Or can I do online?",
              "@VirginAmerica shame on VA for making people spend money in stranded cities when other airlines are landing at JFK! Who will reimburse me?",
              "@VirginAmerica gave a credit for my Late Flight flight yesterday. Great service !!!! That's a Wow moment! Unexpected gesture!",
              "@VirginAmerica Your back of seat entertainment system does not accept credit cards that  have an apostrophe in the surname. #apostrophefail",
              "@united. ..I received on other flights. #united  truly breaks guitars. #unitedbreaksguitars #wantmymoneyback",
              "@united disappointed that u didnt honor my $100 credit given to me for ur mistakes. Taking my business elsewhere",
              "@united it was credit from my last trip that never came in the mail!",
              "@united agent split up my reservation? Now can't Cancelled Flight and refund credit for 2wks? Why",
              "@United fucked up, then voided my ticket, and KEPT MY MONEY.  Not even an apology. I will never fly with your airline again. #UnitedAirlines",
              "@united I wasn't asking for a full refund but delaying me 3 hours and giving no reason should be enough to give partial credit",
              "@united why do you guys split up the charges to credit cards? Making it unnecessarily more expensive for people to fly with you guys on pts",
              "@united My credit card was charged on the transaction when I was told it would not be. If the charge goes through I will be contacting you.",
              "@united @ShowExpert what is going on with United's Mileage Program? You pay $500 for a ticket and get a fraction of that as PQD credit?",
              "@united customers aren't dumb. These revenue based programs will hurt everyone. Not gonna save money like you think",
              "@united I am UA elite Gold and have a UA Chase pres. plus credit card.  How many EQM's do I need to get Platinum Elite!",
              "@united Would be nice if @staralliance partner tickets that don't provide full PQM credit are more obvious before purchase. Lost 1,200 miles",
              "@united 8 hours Late Flightr and I'm siting on another plane waiting to leave. I think a credit is in order for this terrible service!",
              "@united AND WE GOT ZERO VOUCHERS FOR HOTEL OR CAB. I expect some SERIOUS mileage credits.",
              "@united heard about the voucher/miles credit for Cancelled Flighting my international flight yesterday, but I didn't get an email."
)

# cwiczenie 5

str_length(twitter)


# cwiczenie 6

?str_starts

str_starts(twitter, '@united')

str_starts(twitter, '@virgin')

# cwiczenie 7

sum(str_starts(twitter, '@united'))

sum(str_starts(twitter, '@virgin'))

# cwiczenie 8

str_to_lower(twitter)

# cwiczenie 9

sum(str_starts(twitter, '@united'))

sum(str_starts(twitter, '@virgin'))

# cwiczenie 10

str_detect(twitter, 'credit card')

# cwiczenie 11

sum(str_detect(twitter, 'credit card'))

# cwiczenie 12

str_subset(twitter, 'credit card')

# cwiczenie 13

twitter <-  str_replace_all(twitter,'credit card','money')
twitter

# cwiczenie 14

sum(str_detect(twitter, 'credit card'))

# cwiczenie 15

str_locate(twitter,' ')

# cwiczenie 16

str_split_fixed(twitter, ' ', 2)

# cwiczenie 17

stringr::str_split_fixed(twitter, ' ', n=2)[,1]
stringr::str_split_fixed(twitter, ' ', n=2)[,2]

# cwiczenie 18

#ok


# 42 INDEKSOWANIE WEKTORÓW


stclaus <- c(5.25, 5, 6, 4.75, 5.5, 6.6, 6.25, 5.5, 7, 11.5, 44.25, 68.2)
stclaus

stclaus[2]

stclaus[1:5]
stclaus[c(1,1,12)]


stclaus[c(T,F)]


stclaus > 10

stclaus[stclaus>10]

stclaus[-1]

# LAB 43

# cwiczenie 1

f49 <- datasets::AirPassengers[1:12]
f60 <- datasets::AirPassengers[133: 144]

# cwiczenie 2

f49[6:9]
f60[c(6,8,9)]

# cwiczenie 3

f60[c(6:9)] / f49[6:9] 

# cwiczenie 4

f60[12]
f49[12]

# cwiczenie 5

f60[12] - f49[12]

# cwiczenie 6

m49 <- mean(f49)
m60 <- mean(f60)

# cwiczenie 7

f49[f49 > m49]

f60[f60>m60]

# cwiczenie 8

f49[c(1,2,11,12)]

# cwiczenie 9

f49[c(-1, -12)]

# cwiczenie 10

f49[c(-7:-12)]
f49[-12:-7]

# 45 NAZYWANIE WEKTORÓW

stclaus_countries <- c('USA', 'England', 'Norway', 'Sweden', 'Germany', 'Indonesia', 'Poland', 'Brazil')
stclaus <- c(100, 88, 78, 41, 30, 16, 10, 5)

stclaus_countries
stclaus

names(stclaus) <- stclaus_countries
stclaus
names(stclaus)

stclaus['Germany']
stclaus[c('Germany','Poland')]

typeof(stclaus)

stclaus['Indonesia'] <- stclaus['Indonesia'] +10
stclaus

stclaus[c('Norway','Sweden')] <- c(0,0)
stclaus

unname(stclaus)

names(stclaus)
vCountries <- names(stclaus)

vStClaus <- unname(stclaus)
vStClaus

stclaus

as.vector(stclaus)

# 46 LAB

# cwiczenie 1

data <- as.vector(datasets::discoveries)
year <- 1860:1959

# cwiczenie 2

data

# cwiczenie 3

names(data) <- year

# cwiczenie 4

data

# cwiczenie 5

data [data >= 10]

# cwiczenie 6

names(data[data>=10])

# cwiczenie 7

as.integer(names(data[data>=10]))

# cwiczenie 8

data[c('1939','1940','1941', '1942', '1943' ,'1944', '1945')]

# cwiczenie 9

data[as.character(1939:1945)]


# 48. PREDEFINIOWANE WARTOŒCI STA£E

??Constans

LETTERS
letters
month.abb
month.name

values <- runif(12)
values

names(values) <- month.abb
values


install.packages('DescTools')
library('DescTools')

DescTools::cards
DescTools::day.abb
DescTools::day.name


# 49 LAB 

# cwiczenie 1

datasets::USAccDeaths

# cwiczenie 2

year78 <- matrix(data=datasets::USAccDeaths, ncol = 12)[6,]

# cwiczenie 3

names(year78) <- month.abb
year78

# cwiczenie 4

DescTools::tarot

# cwiczenie 5

tarrot_cards <- DescTools::tarot$desc
tarrot_cards <- tarrot_cards[!is.na(tarrot_cards)]

# cwiczenie 6

numbers <- runif(length(tarrot_cards))
numbers

# cwiczenie 7

names(numbers) <- tarrot_cards
numbers

# cwiczenie 8

sort(numbers)

#51. VIDEO MACIERZ, czyli wektor z wierszami i kolumnami

mx <- matrix(1:24, nrow = 4)
mx

mx <- matrix(1:24, nrow =6)
mx

mx <- matrix(1:24, ncol =4)
mx

mx <- matrix(1:24, nrow = 4)
mx

mx[2,3]
mx [2, c(1,5,6)]
mx[2,c(1,5:6)]

mx[c(1,3), c(1,5,6)]

mx[ ,2]
mx[ , ]

rownames(mx) <- c('center', 'station', 'castle', 'campus')
colnames(mx) <- DescTools::day.abb [1:6]
mx

mx['center',]

mx[ , 'Thu']

mx['castle', c('Fri','Sat')]

# LAB 52

# cwiczenie 1

v <- as.vector(datasets::USAccDeaths)
v

# cwiczenie 2

m <- matrix(data = v, ncol = 12)
m
?matrix

# cwiczenie 3

rownames(m) <- c(1973:1978)
m

# cwiczenie 4

colnames(m) <- month.abb
m

# cwiczenie 5

m[as.character(1974), ]

# cwiczenie 6

m[ ,'Oct']

# cwiczenie 7

m[as.character(1973) ,'Oct']

# cwiczenie 8

m[1:2,7:8]

# cwiczenie 9

unname(m)

# 54.ARRAY - TABLICE WIELOWYMIAROWE

a <- array(data = 1:24, dim =c (2,3,4))
a

a[1,2,3]
a[ ,2,3]
a[,,4]
a
a[1,1,]

dimnames(a)[[1]] <- c('row1', 'row2')
dimnames(a)[[2]] <- c('col1','col2','col3')
dimnames(a)[[3]] <- c('l1','l2','l3','l4')
a

a['row1','col3','l1']

dimnames(a)

dimnames(a)[1]

dimnames(a)[[1]]

x <- array(1:48, dim =c(2,3,4,2))
dimnames(x)[[1]] <- c('r1', 'r2')
dimnames(x)[[2]] <- c('c1','c2','c3')
dimnames(x)[[3]] <- c('l1','l2','l3','l4')
dimnames(x)[[4]] <- c('inner','outer')
dimnames(x)
x

y = array (data= 1:24, dim = c(2,3,4),
           dimnames = list(c('r1','r2'), c('c1','c2', 'c3'), c('l1', 'l2', 'l3', 'l4')))
y

dimnames(y)
dimnames(y)[2]

a
a[1,2,4] <- 100
a

a*100

# LAB 55.

# cwiczenie 1

data <- c(
  'E-Tron', 'A7 Sportback S', 'Electric', '2.0 TDI Diesel','402', '201', '5.5', '6.8', '490', '496',
  'i8', '7-Series', 'Petrol/Electric/Hybrid', '725d Diesel', '356', '227', '4.3',  '6.7', '468', '509',
  'Leaf', 'NV200', 'Electric', 'Electric', '147', '107',  '8.3', '13.6','449',  '456')

# cwiczenie 2

cars <- array(data, dim = c(2,5,3))
cars

# cwiczenie 3

dimnames(cars)[[2]] = c( 'Model', 'Engine', 'Power', '0-60mph', 'Length')
cars

# cwiczenie 4

dimnames(cars)[[3]] = c('Audi', 'BMW', 'Nissan')
cars

# cwiczenie 5

cars[, 'Model',]

# cwiczenie 6 

cars[ ,'Engine', 'Nissan']

# cwiczenie 7

cars[ ,, 'Nissan']

# cwiczenie 8

cars2 <- array(data, dim= c(2,5,3),
               dimnames = list(NULL, c('Model', 'Engine', 'Power', '0-60mph', 'Length'), c('Audi', 'BMW', 'Nissan')))

cars2

#  56 LISTY

obj <- c(1,2,3)
obj

typeof(obj)

obj <- c(1,2,'three')
obj

typeof(obj)


color_v <- c('red','green', 'blue')
size_m <- matrix(c('S','M','L','X'), nrow = 2)
promotion_v <- c(T,T,F,T)
amount <- 890

l <- list(color_v, size_m,promotion_v,amount)
l

l[1]
typeof(l[1])

l[[1]]
typeof(l[[1]])

names(l) <- c('colors', 'sizes', 'promotion', 'amount')
names(l)
l

l['promotion']

l[['promotion']]

l$promotion

l$amount *100

toupper(l$promotion)

is.matrix(l$promotion)

is.list(l)

length(l$promotion)


# LAB 57 LISTY

# cwiczenie 1

companies <- c('Expedia','Priceline','American Express')

# cwiczenie 2

earnings <- c(50.4, 50.3, 29.9)

# cwiczenie 4

employees <- c(22.6, 24.5, 12)

# cwiczenie 3

founded <- c(1966, 1997, NA)

# cwiczenie 5

travel_info <- list(companies, earnings, founded, employees)


















