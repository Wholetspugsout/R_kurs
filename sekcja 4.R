# SEKCJA 4 - Typy dancyh i funkcje z nimi zwiazane

x <- 16
typeof(x)

x <- integer(16)
x

#28 video

16>5
typeof(16>5)

x <- 4
typeof(x)
c(1,2,3)
typeof(c)

c(1,2,3,'4')
typeof(c)

#30 video 

title = "R for beinners"
nchar(title)


substr(title,3,7)
toupper(title)
tolower(title)


strsplit(title,'f')


paste('R','4','beginners')


paste('R','4','beginners', sep = '-')


splitted_text <- "Eliza lubi mopsy"
splitted_text

sub('Eliza', 'ja', splitted_text)

grep('Eliza', splitted_text)
grep('Eliza', splitted_text, value = T)
grepl('Eliza', splitted_text)



#LAB 31.


# cwiczenie 1

multiline_text <- 'first line\nsecond line\nthird line'
nchar(multiline_text)

# cwiczenie 2

poem <- 'ona wyjecha�a ju� �pij sam'

# cwiczenie 3

new_poem <- paste(substr(poem,1,8), substr(poem,20,26))
new_poem

# cwiczenie 4

toupper(new_poem)

# cwiczenie 5

nonsens <- c("Szed� facet ko�o bajora i go przymuli�o. ", "Szed� facet ko�o ba�aganu i zacz�� gada� bez sensu. ", "Szed� facet ko�o betoniarki i si� zmiesza�. ", 
            "Szed� facet ko�o butelki i mu wlali. ", "Szed� facet ko�o cementu i go zamurowa�o. ", 
            "Szed� facet ko�o cukierni i co� go wpierniczy�o. ", "Szed� facet ko�o czo�gu i go oblaz�y g�sienice. ",
            "Szed� facet ko�o do�u i si� poni�y�. ", "Szed� facet ko�o drut�w i go zelektryzowa�a wiadomo��. ", 
            "Szed� facet ko�o d�wigu i si� uni�s�. ", "Szed� facet ko�o gilotyny i straci� g�ow�. ", 
            "Szed� facet ko�o haka i kto� si� do niego przyczepi�. ", "Szed� facet ko�o koparki i da� si� nabra�. ", 
            "Szed� facet ko�o korka i si� zatka�. ", "Szed� facet ko�o ko�cio�a i �upn�o go w krzy�u. ", 
            "Szed� facet ko�o kranu i go olali. ", "Szed� facet ko�o latarni i go o�wieci�o. ", 
            "Szed� facet ko�o lustra i mu odbi�o. ", "Szed� facet ko�o �opaty i go wkopali. ", 
            "Szed� facet ko�o m�otka i by� troch� stukni�ty. ", "Szed� facet ko�o myd�a i zacz�� si� pieni�. ", 
            "Szed� facet ko�o no�a i zar�n�� kawa�. ", "Szed� facet ko�o piasku i go wsypali. ", 
            "Szed� facet ko�o pieca i si� zapali�. ", "Szed� facet ko�o pi�y i si� ur�n��. ", 
            "Szed� facet ko�o pomnika i skamienia�. ", "Szed� facet ko�o p�ki z przyprawami i go opieprzyli. ", 
            "Szed� facet ko�o prysznica i si� sp�uka�. ", "Szed� facet ko�o punktu skupu opakowa� szklanych i nabili go w butelk�. ", 
            "Szed� facet ko�o reflektora i go ol�ni�o. ", "Szed� facet ko�o rzeki i mu zmyli g�ow�. ", 
            "Szed� facet ko�o samochodu i si� przejecha�. ", "Szed� facet ko�o saperki i mu dokopali. ", 
            "Szed� facet ko�o sklepu rybnego i go wy�ledzili. ", "Szed� facet ko�o sp�uczki i si� spu�ci�. ", 
            "Szed� facet ko�o stadniny i zrobili go w konia. ", "Szed� facet ko�o szczoty i go przeczy�ci�o. ", 
            "Szed� facet ko�o sznurka i oberwa�. ", "Szed� facet ko�o �ruby i si� gdzie� wkr�ci�. ", 
            "Szed� facet ko�o topora katowskiego i go z n�g �ci�o. ", "Szed� facet ko�o walca i zacz�� si� p�aszczy�. ",
            "Szed� facet ko�o wi�zienia i si� zamkn��. ", "Szed� facet ko�o wodoci�gu i si� zmy�. ", 
            "Szed� facet ko�o zlewu i go zatka�o. ", "Szed� facet po torach i si� wykolei�. ", 
            "Szed� facet po zboczu i si� stoczy�. ", "Szed� facet podczas wichury i gdzie� zwia�. ", 
            "Szed� facet przez budow� i go zamurowa�o. ", "Szed� facet przez las i zd�bia�. ", 
            "Szed� facet przez l�d i si� za�ama�. ", "Szed� facet przez ogr�d i nala� w pory.")
grep('ko�o', nonsens)
grepl('ko�o', nonsens)  
grep('ko�o', nonsens, value = TRUE)  

grep("i go", nonsens, value = TRUE)
grep("i mu", nonsens, value = TRUE)


message = format("The end", width = 20, justify = 'c')
message


























