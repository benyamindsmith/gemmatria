#'Get Gemmatria of Sofei Taivos
#'
#'Get the Gemmatria of the Sofei Taivos of Hebrew text
#'
#'@param text Hebrew text
#'
#'@keywords Hebrew
#'@concept Gemmatria
#'@concept Sofei Taivos
#'
#'@export
#'@examples
#'
#'tct<-"דוד המלך"
#'get_gemmatria_st(tct)

get_gemmatria_st<-function(text){
  splt<-trimws(text)
  splt<-unlist(strsplit(splt,split = " "))
  
  splt<-unname(sapply(splt,function(x) strsplit(x,split="")))
  splt<-sapply(splt,function(x) x[length(x)])
  
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