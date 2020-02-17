rinde_aj <- function( # kg/ha
  m_muestra,      # m
  dist_surcos, # cm
  h_muestra,     # g
  peso_tot,   # g
  h_deseada   # %
){ 
  area_cosecha = m_muestra*dist_surcos/100
  contenido_h = peso_tot*h_muestra/100
  rinde_s = ((peso_tot-contenido_h)/area_cosecha)*10 
  rinde_aj = round(rinde_s/(1-(h_deseada/100)), 0) 
  rinde_aj
}

rinde_aj2 <- function( # kg/ha
  m_muestra, # m
  dist_surcos, # cm
  peso_h,     # g
  peso_s,     # g
  tara_s,       # g 
  peso_tot,   # g
  h_deseada   # %
){ 
  area_cosecha = m_muestra*dist_surcos/100
  
  h_muestra = (peso_h-(peso_s-tara_s))/peso_h
  
  contenido_h = peso_tot*h_muestra
  
  rinde_s = ((peso_tot-contenido_h)/area_cosecha)*10 
  
  rinde_aj = round(rinde_s/(1-(h_deseada/100)), 0) 
  
  bind_rows(setNames(c(h_muestra*100, rinde_aj), 
                     c("hum", "rinde_aj")))
  }
# rinde_aj2(
#          m_muestra = 12,      # m
#          dist_surcos = 17.5, # cm
#          peso_h = 48,     # g
#          peso_s = 47,     # g
#          tara_s = 2,       # g
#          peso_tot = 1297,   # g
#          h_deseada = 12  # %
# )

