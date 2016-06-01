class Municipio < ActiveRecord::Base
belongs_to :circuito
def total_lista
        municipio_lista = 0
        @parroquias = Parroquium.where(municipio_id: self[:id])
        @parroquias.each do |parroquia|
          municipio_lista += parroquia.total_lista
         
        end
        municipio_lista
     end
    
    def total_teodoro
        municipio_teodoro = 0
        @parroquias = Parroquium.where(municipio_id: self[:id])
        @parroquias.each do |parroquia|
          municipio_teodoro += parroquia.total_teodoro
        end
        municipio_teodoro
    end
    
    def total_marquina
        municipio_marquina = 0
        @parroquias = Parroquium.where(municipio_id: self[:id])
        @parroquias.each do |parroquia|
          municipio_marquina += parroquia.total_marquina
        end
        municipio_marquina
    end
    
    def total_nulo
        municipio_nulo = 0
        @parroquias = Parroquium.where(municipio_id: self[:id])
        @parroquias.each do |parroquia|
          municipio_nulo += parroquia.total_nulo
        end
        municipio_nulo
    end
    
    def total_total
        municipio_total = 0
        @parroquias = Parroquium.where(municipio_id: self[:id])
        @parroquias.each do |parroquia|
          municipio_total += parroquia.total_total
        end
        municipio_total
    end
    
    def electores
        elec = 0
        @parroquias = Parroquium.where(municipio_id: self[:id])
        @parroquias.each do |parroquia|
          elec += parroquia.electores
        end
        elec
    end
    
      
   ##############################################
    def porcen_lista
      if total_total==0
      porcentaje_lista=0
    else
     porcentaje_lista= (total_lista*100)/total_total
    end
  end


  def porcen_teodoro
          if total_total==0
        porcentaje_teodoro=0
      else
    porcentaje_teodoro= (total_teodoro*100)/total_total
  end
end

  def porcen_marquina
        if total_total==0
      porcentaje_marquina=0
    else
  porcentaje_marquina= (total_marquina*100)/total_total
  end
  end
  
  def promedio_unidad
    if total_total==0
      prom_unidad=0
    else
    prom_unidad= (total_lista+total_marquina+total_teodoro)/total_total
    end
  end
  
   def abstencion
      if electores=0
        abs=0
      else
      abs=0
    abs=(electores-total_total)*100/electores
  end
end
  
end
