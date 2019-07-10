#' Convert to Gemmatria Form 
#' 
#' This converts decimal (base ten) _whole_ numbers into gemmatria form
#' 
#' @param number a whole number
#' 
#' @keywords Hebrew
#' @concept Gemmatria
#' 
#' @export
#' @example
#' nb<-613
#' as_gemmatria(nb)



as_gemmatria<-function(number){
  gem<-c()
  dv<-number
  
  #The algorithm
  if(dv/400>0){
    gem<-c(rep("ת",floor(dv/400)))
    bt<-number%%400
    if(bt/300>0){
      gem<-c(gem,rep("ש",floor(bt/300)))
      bt<-bt%%300
      if(bt/200>0){
        gem<-c(gem,rep("ר",floor(bt/200)))
        bt<-bt%%200
        if(bt/100>0){
          gem<-c(gem,rep("ק",floor(bt/100)))
          bt<-bt%%100
          if(bt/90>0){
            gem<-c(gem,rep("צ",floor(bt/90)))
            bt<-bt%%90
            if(bt/80>0){
              gem<-c(gem,rep("פ",floor(bt/80)))
              bt<-bt%%80
              if(bt/70>0){
                gem<-c(gem,rep("ע",floor(bt/70)))
                bt<-bt%%70
                if(bt/60>0){
                  gem<-c(gem,rep("ס",floor(bt/60)))
                  bt<-bt%%60
                  if(bt/50>0){
                    gem<-c(gem,rep("נ",floor(bt/50)))
                    bt<-bt%%50
                    if(bt/40>0){
                      gem<-c(gem,rep("מ",floor(bt/40)))
                      bt<-bt%%40
                      if(bt/30>0){
                        gem<-c(gem,rep("ל",floor(bt/30)))
                        bt<-bt%%30
                        if(bt/20>0){
                          gem<-c(gem,rep("כ",floor(bt/20)))
                          bt<-bt%%20
                          if(bt/10 >0){
                            gem<-c(gem,rep("י",floor(bt/10)))
                            bt<-bt%%10
                            if(bt/9>0){
                              gem<-c(gem,rep("ט",floor(bt/9)))
                              bt<-bt%%9
                              if(bt/8>0){
                                gem<-c(gem,rep("ח",floor(bt/8)))
                                bt<-bt%%8
                                if(bt/7>0){
                                  gem<-c(gem,rep("ז",floor(bt/7)))
                                  bt<-bt%%7
                                  if(bt/6>0){
                                    gem<-c(gem,rep("ו",floor(bt/6)))
                                    bt<-bt%%6
                                    if(bt/5>0){
                                      gem<-c(gem,rep("ה",floor(bt/5)))
                                      bt<-bt%%5
                                      if(bt/4>0){
                                        gem<-c(gem,rep("ד",floor(bt/4)))
                                        bt<-bt%%4
                                        if(bt/3>0){
                                          gem<-c(gem,rep("ג",floor(bt/3)))
                                          bt<-bt%%3
                                          if(bt/2>0){
                                            gem<-c(gem,rep("ב",floor(bt/2)))
                                            bt<-bt%%2
                                            if(bt/1>0){
                                              gem<-c(gem,rep("א",floor(bt/1)))
                                            } 
                                          }  
                                        }  
                                      }  
                                    }  
                                  }  
                                }  
                              }  
                            }  
                          }  
                        }  
                      }  
                    }  
                  } 
                } 
              } 
            } 
          } 
        } 
      } 
    } 
  } 
  paste0(gem,collapse="")
}
