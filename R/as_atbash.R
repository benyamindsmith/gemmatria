#'Convert Hebrew text to AtBash form.
#'
#'Get AtBash configuration of of Hebrew Text
#'
#'@param text Hebrew Text
#'@keywords Hebrew
#'@concept AtBash
#'@export
#'@examples
#'tct<-"דוד המלך"
#'as_atbash(tct)

as_atbash<-function(text){
  
  splt<-trimws(text)
  splt<-unlist(strsplit(splt,split = " "))
  
  splt<-unname(sapply(splt,function(x) strsplit(x,split="")))
  
  ab<-lapply(splt,            function(x)plyr::revalue(x,c( "א"="ת",
                                                            "ב"="ש",
                                                            "ג"="ר",
                                                            "ד"="ק",
                                                            "ה"="צ",
                                                            "ו"="פ",
                                                            "ז"="ע",
                                                            "ח"="ס",
                                                            "ט"="נ",
                                                            "י"="מ",
                                                            "כ"="ל",
                                                            "ך"="ל",
                                                            "ל"="כ",
                                                            "מ"="י",
                                                            "ם"="י",
                                                            "נ"="ט",
                                                            "ן"="ט",
                                                            "ס"="ח",
                                                            "ע"="ז",
                                                            "פ"="ו",
                                                            "ף"="ו",
                                                            "צ"="ה",
                                                            "ץ"="ה",
                                                            "ק"="ד",
                                                            "ר"="ג",
                                                            "ש"="ב",
                                                            "ת"="א"),
                                                       warn_missing = FALSE ))
  ab<-lapply(ab,function(x) paste(x,collapse=""))
  ab<-unlist(ab)
  paste(ab,collapse=" ")
}