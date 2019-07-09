#'Get Gemmatria of Text
#'
#'
#'

heb<-"שלום"

tct<-"דוד המלך"
require(plyr)
get_gemmatria<-function(text){
  #'Split text
  splt<-unlist(strsplit(text,split=""))
  
  gem<-sapply(splt, function(x)plyr::revalue(x,c( "א"=1,
                                                  "ב"=2,
                                                  "ג"=3,
                                                  "ד"=4,
                                                  "ה"=5,
                                                  "ו"=6,
                                                  "ז"=7,
                                                  "ח"=8,
                                                  "ט"=9,
                                                  "י"=10,
                                                  "כ"=20,
                                                  "ך"=20,
                                                  "ל"=30,
                                                  "מ"=40,
                                                  "ם"=40,
                                                  "נ"=50,
                                                  "ן"=50,
                                                  "ס"=60,
                                                  "ע"=70,
                                                  "פ"=80,
                                                  "ף"=80,
                                                  "צ"=90,
                                                  "ץ"=90,
                                                  "ק"=100,
                                                  "ר"=200,
                                                  "ש"=300,
                                                  "ת"=400),
                                             warn_missing = FALSE ))
  
  gem<-unname(gem)
  gem<-as.numeric(gem)
  
  sum(gem)
  
}

get_gemmatria_atbash<-function(text){ splt<-unlist(strsplit(text,split=""))

gem<-sapply(splt, function(x)plyr::revalue(x,c( "א"=400,
                                                "ב"=300,
                                                "ג"=200,
                                                "ד"=100,
                                                "ה"=90,
                                                "ו"=80,
                                                "ז"=70,
                                                "ח"=60,
                                                "ט"=50,
                                                "י"=40,
                                                "כ"=30,
                                                "ך"=30,
                                                "ל"=20,
                                                "מ"=10,
                                                "ם"=10,
                                                "נ"=9,
                                                "ן"=9,
                                                "ס"=8,
                                                "ע"=7,
                                                "פ"=6,
                                                "ף"=6,
                                                "צ"=5,
                                                "ץ"=5,
                                                "ק"=4,
                                                "ר"=3,
                                                "ש"=2,
                                                "ת"=1),
                                           warn_missing = FALSE ))

gem<-unname(gem)
gem<-as.numeric(gem)

sum(gem)}

get_gemmatria_rt<-function(text){
  splt<-unlist(strsplit(text,split = " "))
  
  splt<-unname(sapply(splt,function(x) strsplit(x,split="")))
  splt
}
