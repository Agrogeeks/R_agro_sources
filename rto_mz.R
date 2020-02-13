##Pasar un muestreo de espigas/m a kg/ha 
#inputs: metros muestreados, ancho de hileras, 
#espigas obtenidas, peso seco medio de espiga)

rend_mz<- function(metros_lineales, dist_hileras, nro_espigas, peso_medio_esp){
  a<-metros_lineales #en metros
  b<-dist_hileras # en cm
  c<-nro_espigas #en la distancia lineal
  d<-peso_medio_esp # en gramos
  rha<-(c*d/1000)/(a*b/1000000)
  return(paste(round(rha, 2), "kg/ha"))
}

rend_ha(10, 52.5, 43, 197)
