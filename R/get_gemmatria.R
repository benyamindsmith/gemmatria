#'Get Gemmatria of Text
#'
#'Get the gemmatria of Hebrew words. 
#'
#'@param text Hebrew text
#'
#'@keywords Hebrew
#'@concept Gemmatria
#'
#'@export
#'@examples
#'# heb<-"שלום"
#'
#'
#'# get_gemmatria(heb)
#'
#'# get_gemmatria_st(tct)
#'
get_gemmatria<-function(text){
  splt<-gsub(" ","",text)
  splt<-unlist(strsplit(splt,split=""))
  
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

