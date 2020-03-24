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

poem <- 'ona wyjecha³a ju¿ œpij sam'

# cwiczenie 3

new_poem <- paste(substr(poem,1,8), substr(poem,20,26))
new_poem

# cwiczenie 4

toupper(new_poem)

# cwiczenie 5

nonsens <- c("Szed³ facet ko³o bajora i go przymuli³o. ", "Szed³ facet ko³o ba³aganu i zacz¹³ gadaæ bez sensu. ", "Szed³ facet ko³o betoniarki i siê zmiesza³. ", 
            "Szed³ facet ko³o butelki i mu wlali. ", "Szed³ facet ko³o cementu i go zamurowa³o. ", 
            "Szed³ facet ko³o cukierni i coœ go wpierniczy³o. ", "Szed³ facet ko³o czo³gu i go oblaz³y g¹sienice. ",
            "Szed³ facet ko³o do³u i siê poni¿y³. ", "Szed³ facet ko³o drutów i go zelektryzowa³a wiadomoœæ. ", 
            "Szed³ facet ko³o dŸwigu i siê uniós³. ", "Szed³ facet ko³o gilotyny i straci³ g³owê. ", 
            "Szed³ facet ko³o haka i ktoœ siê do niego przyczepi³. ", "Szed³ facet ko³o koparki i da³ siê nabraæ. ", 
            "Szed³ facet ko³o korka i siê zatka³. ", "Szed³ facet ko³o koœcio³a i ³upnê³o go w krzy¿u. ", 
            "Szed³ facet ko³o kranu i go olali. ", "Szed³ facet ko³o latarni i go oœwieci³o. ", 
            "Szed³ facet ko³o lustra i mu odbi³o. ", "Szed³ facet ko³o ³opaty i go wkopali. ", 
            "Szed³ facet ko³o m³otka i by³ trochê stukniêty. ", "Szed³ facet ko³o myd³a i zacz¹³ siê pieniæ. ", 
            "Szed³ facet ko³o no¿a i zar¿n¹³ kawa³. ", "Szed³ facet ko³o piasku i go wsypali. ", 
            "Szed³ facet ko³o pieca i siê zapali³. ", "Szed³ facet ko³o pi³y i siê ur¿n¹³. ", 
            "Szed³ facet ko³o pomnika i skamienia³. ", "Szed³ facet ko³o pó³ki z przyprawami i go opieprzyli. ", 
            "Szed³ facet ko³o prysznica i siê sp³uka³. ", "Szed³ facet ko³o punktu skupu opakowañ szklanych i nabili go w butelkê. ", 
            "Szed³ facet ko³o reflektora i go olœni³o. ", "Szed³ facet ko³o rzeki i mu zmyli g³owê. ", 
            "Szed³ facet ko³o samochodu i siê przejecha³. ", "Szed³ facet ko³o saperki i mu dokopali. ", 
            "Szed³ facet ko³o sklepu rybnego i go wyœledzili. ", "Szed³ facet ko³o sp³uczki i siê spuœci³. ", 
            "Szed³ facet ko³o stadniny i zrobili go w konia. ", "Szed³ facet ko³o szczoty i go przeczyœci³o. ", 
            "Szed³ facet ko³o sznurka i oberwa³. ", "Szed³ facet ko³o œruby i siê gdzieœ wkrêci³. ", 
            "Szed³ facet ko³o topora katowskiego i go z nóg œciê³o. ", "Szed³ facet ko³o walca i zacz¹³ siê p³aszczyæ. ",
            "Szed³ facet ko³o wiêzienia i siê zamkn¹³. ", "Szed³ facet ko³o wodoci¹gu i siê zmy³. ", 
            "Szed³ facet ko³o zlewu i go zatka³o. ", "Szed³ facet po torach i siê wykolei³. ", 
            "Szed³ facet po zboczu i siê stoczy³. ", "Szed³ facet podczas wichury i gdzieœ zwia³. ", 
            "Szed³ facet przez budowê i go zamurowa³o. ", "Szed³ facet przez las i zdêbia³. ", 
            "Szed³ facet przez lód i siê za³ama³. ", "Szed³ facet przez ogród i nala³ w pory.")
grep('ko³o', nonsens)
grepl('ko³o', nonsens)  
grep('ko³o', nonsens, value = TRUE)  

grep("i go", nonsens, value = TRUE)
grep("i mu", nonsens, value = TRUE)


message = format("The end", width = 20, justify = 'c')
message


























