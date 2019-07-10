#'Get AtBash Gemmatria of Text
#'
#'Get the AtBash Gemmatria of Hebrew text
#'
#'@param text Hebrew text
#'
#'@keywords Hebrew
#'@concept Gemmatria
#'@concept AtBash
#'
#'@export
#'@examples
#'
#' heb<-"שלום"
#' get_gemmatria_atbash(heb)

get_gemmatria_atbash<-function(text){ 
  
  splt<-gsub(" ","",text)
  splt<-unlist(strsplit(splt,split=""))
  
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