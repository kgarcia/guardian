class Mesa < ActiveRecord::Base
  belongs_to :centro
  belongs_to :user

def porcen_lista
  if votos==0
    porcentaje_lista=0
  else
  porcentaje_lista= (lista*100)/votos
  end
end

def porcen_teodoro
  if votos==0
    porcentaje_teodoro=0
  else
  porcentaje_teodoro= (teodoro*100)/votos
  end
end

def porcen_marquina
  if votos==0
    porcentaje_marquina=0
  else
  porcentaje_marquina= (marquina*100)/votos
  end
end
  
def promedio_unidad
  if self.votos==0
    prom_unidad=0
  else
  prom_unidad= (lista+teodoro+marquina)/votos
  end
end

def suma
  lista+marquina+teodoro
end

def denominador
votos
end
  



end
