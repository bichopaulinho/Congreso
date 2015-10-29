

library(rvest)
library(dplyr)
library(RCurl)

rm(list=ls())

# URL votaciones de fecha concreta
#http://www.congreso.es/portal/page/portal/Congreso/Congreso/Actualidad/Votaciones?_piref73_10908194_73_9536063_9536063.next_page=/wc/accesoHistoricoVotaciones&fechaSeleccionada=2015/10/20


# selector xmls resultados (a+ a img)

#link a xml con resultados: http://www.congreso.es/votaciones/OpenData?sesion=292&votacion=4&legislatura=10




# Estrategia 1: probar sesión por sesión y por votaciones hasta que una falle
sesiones <- 4:292

for (ses in sesiones){
    
    vot <- 1
    
    u <- sprintf("http://www.congreso.es/votaciones/OpenData?sesion=%d&votacion=%d&legislatura=10", ses, vot)
    while (url.exists(u)) {
        txt = getURL("http://www.omegahat.org/RCurl/")
        
        #parseo del resultado
        res <- htmlTreeParse(txt, asText = TRUE)
        res2 <- xml(txt)
        vot <- vot+1
    }
    
    
    
    
    
}
