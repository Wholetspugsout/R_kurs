# SEKCJA 6 

# 61. DATA FRAME - Sposób na dane tabelaryczne 

df <- data.frame(
  country = c('Netherlands', 'Italy', 'Russia', 'Switzerland', 'Norway'),
  song = c('Arcade', 'Soldi', 'Scream', 'She got me', 'Spirit in the sky'),
  points = c(492, 465, 369, 360, 338),
  jury = c(231,212,125,148,47)
  )

df

nrow(df)
ncol(df)
length(df)
names(df)
colnames(df)
rownames(df)

colnames(df)[4] <- 'jury points'
df

rownames(df) <- c('winner', '2nd', '3rd', '4th', '5th')
df

is.data.frame(df)
is.list(df)
is.matrix(df)
typeof(df)
class(df)

df
df[1]
df[c(1:2)]
df[2,1]
df[2,]
df['winner','song']


# LAB 61

# cwiczenie 1

coffebar <- data.frame(
                      name = c('Caffe Americano', 'Cafe Latte','Cappuccino','Espresso','Flat white','Macchiato'),
                      ingrediens = c(NA,'steamed milk','steamed milk + foamy milk + chocolate',NA,'cream milk','steamed milk'),
                      country = c('USA','France','Italy','Italy','New Zealand','Italy'),
                      temp = c('Hot','Hot','Medium hot','Hot','Hot','Hot'),
                      price = c(3, 4, 4, 3, 5, 4)
)

# cwiczenie 2

coffebar

# cwiczenie 3

coffebar[ ,1]
coffebar[ ,1:3]
coffebar[3,3]
coffebar[ ,c('name','country', 'price')]
coffebar[,c(1,5)]

# 63 ODCZYT I ZAPIS DATA FRAME Z I DO PLIKU

top50 <- read.csv('C:/Users/Eliza/Documents/R_kurs/top50spotify2019/top50.csv', header = TRUE, sep =',')
top50

?read.csv

colnames(top50)

colnames_tmp <- c("X", "Track.Name","Artist.Name","Genre","Beats.Per.Minute","Energy","Danceability","Loudness..dB..","Liveness",
                  "Valence.","Length.","Acousticness..","Speechiness.","Popularity")


top50 <- read.csv('C:/Users/Eliza/Documents/R_kurs/top50spotify2019/top50.csv', header = TRUE, sep =',',
                  col.names = colnames_tmp)
top50

install.packages('data.table')
library(data.table)
mydat <- fread ('http://data.cityofnewyork.us/api/views/kku6-nxdu/rows.csv?accesstype=DOWNLOAD')
mydat
head(mydat)
class(mydat)

write.table(x=top50, file= 'c:/temp/exported_top.tsv', quote = T, sep = '\t', append = F)

# 64 LAB

pliczek <- 'C:/Users/Eliza/Documents/R_kurs/scotish-whisky-score/scotch_score.csv'

# cwiczenie 1

whiskyDF <- read.csv(pliczek, header = T)

# cwiczenie 2

whiskyDF

# cwiczenie 3

nazwy_kolumn <- c('id','name','region','district','review_point','score')
whiskyDF <- read.csv('C:/Users/Eliza/Documents/R_kurs/scotish-whisky-score/scotch_score.csv', header = T, col.names = nazwy_kolumn)
whiskyDF

# cwiczenie 4

head(whiskyDF, n=10)

# cwiczenie 5

library(data.table)
install.packages('curl')
currency2019 <- fread ('https://www.nbp.pl/kursy/Archiwum/archiwum_tab_a_2019.csv', sep = ';', fill= T)
currency2019 

head(currency2019)

currency2019 <- currency2019[2:(nrow(currency2019)-4),]


# 66. OPERACJE NA KOLUMNACH W DATA FRAME

df <- data.frame(
  country = c('Netherlands', 'Italy', 'Russia', 'Switzerland', 'Norway'),
  song = c('Arcade', 'Soldi', 'Scream', 'She got me', 'Spirit in the sky'),
  points = c(492, 465, 369, 360, 338),
  jury = c(231,212,125,148,47)
)


df[1] 
df[1,1:4] 
df[1,] # wszystko z pierwszego wiersza i ze wszytskich kolumn

df[2] # wszystko z drugiej kolumny

df[[2]] # wszystko z drugiej kolumny zwrocone jako wektor

summary(df) # daje podstawwe statystyki o danych

top50 <- read.csv('C:/Users/Eliza/Documents/R_kurs/top50spotify2019/top50.csv',
                  header = T, 
                  sep =',')
top50
head(top50)

colnames(top50)

gsub('[.]','',colnames(top50)) # gsub = globalnie zamien wszytskie znaki, ktore podalismy w pierwszym argumencie (u nas to kropki)
colnames(top50) <- gsub('[.]','',colnames(top50))
head(top50)

paste('x','y') # ³aczenie napisow, konkatenacja
paste('x','y', sep = "_______")
paste('x','y', sep = "")

top50$Title <- paste(top50$ArtistName, top50$TrackName, sep =":") # nowa kolumna w data frame
head(top50)

sub('girl', 'boy', 'girlfriend') # znajduje pierwszy argument w trzecim argumencie i zamienia go na drugi argument. Uwaga! case sensitive
top50$TrackName
sub('[Yy]ou', 'I', top50$TrackName) # [Yy] powoduje ze bierze pod uwage zarowno napis z malej litery y jak i z du¿ej Y

gsub('[Gg]irl','boy', 'Girlfriend')
gsub('girl','boy', 'Girlfriend', ignore.case = T) # tez bedzie bralo pod uwage duza i mala lietra

top50$len_category <- ifelse(top50$Length>= median(top50$Length), "LONG", "SHORT" )
top50$len_category

top50$len_category <- ifelse(top50$len_category == "LONG", 1,0) # jesli tak - 1, jesli nie - 0 

# 67 LAB 

coffebar <- data.frame(
  name = c('Caffe Americano', 'Cafe Latte','Cappuccino','Espresso','Flat white','Macchiato'),
  ingredients = c(NA,'steamed milk','stemed milk + foamy milk + chocolate',NA,'cream milk','steamed milk'),
  country = c('USA','France','Italy','Italy','New Zealand','Italy'),
  temp = c('Hot','Hot','Medium hot','Hot','Hot','Hot'),
  price = c(3, 4, 4, 3, 5, 4)
)

coffebar[3] # lista
coffebar[[3]] # wektor
summary(coffebar)


whiskey <- read.csv('C:/Users/Eliza/Documents/R_kurs/scotish-whisky-score/scotch_score.csv')
gsub('[.]','_', colnames(whiskey))
tolower(colnames(whiskey))
whiskey$origin <- paste(whiskey$REGION,whiskey$DISTRICT, sep= "/")
head(whiskey)

whiskyDF$origin <- gsub('high/','',whiskyDF$origin, ignore.case = TRUE)
head(whiskyDF,n=20)


whiskyDF$UpDown <- ifelse(whiskyDF$score>0, '+', '-')
head(whiskyDF,n=20)

# 69 FILTROWANIE DANCYH

# wyrazenia logiczne

1 > 2
1< 2
1 == 2 # czy wartosci sa sobie rowne
1 != 2 # czy te wartosci sa od siebie rozne
! 1 != 2 # nie prawda, ze 1 jest roznem od 2 
!! 1 != 2 # nie prawda, ze nie prawda, ze 1 jest roznem od 2
1 >= 2
1 > 2 & 2 ==2 # jeden mniejsze od dwa i jednoczesnie 2 rowna sie 2
1 > 2 & 2 !=2
"pilot" =="pilot"
'pilot' == "pILot"
toupper('pilot') == toupper("pILot")
&& # bedzie pracowal na pojedynczych wartosciach
& # zadziala na wektorze

  
  
top50 <- read.csv('C:/Users/Eliza/Documents/R_kurs/top50spotify2019/top50.csv',
                    header = T, 
                    sep =',')
colnames(top50) <- gsub('[.]','',colnames(top50))
head(top50)

# filtrowanie

top50$Genre == 'pop'
top50$Genre[c(T)]
top50$Genre[top50$Genre == 'pop']  

filter_pop <- top50$Genre == 'pop'
filter_pop
top50$Genre[filter_pop]
top50$TrackName[filter_pop]  

top50[filter_pop, c("ArtistName", 'TrackName')]  
top50[filter_pop,] # wyswieti wszytsko co spelnia warunek filter pop 

top50[4, "Genre"] <- NA

filter_pop <- top50$Genre == 'pop'
top50[filter_pop,]

is.na(top50$Genre) # sprawdza czy wartosc to NA

  















































