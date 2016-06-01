class Parroquium < ActiveRecord::Base
  belongs_to :municipio

 def total_lista
        parroquia_lista = 0
        @centros = Centro.where(parroquia_id: self[:id])
        @centros.each do |centro|
          
        parroquia_lista += centro.total_lista
         
        end
        parroquia_lista
     end
    
    def total_teodoro
        parroquia_teodoro = 0
        @centros = Centro.where(parroquia_id: self[:id])
        @centros.each do |centro|
          parroquia_teodoro += centro.total_teodoro
        end
        parroquia_teodoro
    end
    
    def total_marquina
        parroquia_marquina = 0
        @centros = Centro.where(parroquia_id: self[:id])
        @centros.each do |centro|
          parroquia_marquina += centro.total_marquina
        end
        parroquia_marquina
    end
    
    def total_nulo
        parroquia_nulo = 0
        @centros = Centro.where(parroquia_id: self[:id])
        @centros.each do |centro|
          parroquia_nulo += centro.total_nulo
        end
        parroquia_nulo
    end
    
    def total_total
        parroquia_total = 0
        @centros = Centro.where(parroquia_id: self[:id])
        @centros.each do |centro|
          parroquia_total += centro.total_total
        end
        parroquia_total
    end
    
    def electores
        elec = 0
        @centros = Centro.where(parroquia_id: self[:id])
        @centros.each do |centro|
          elec += centro.electores
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
  
  def suma
total_lista+total_marquina+total_teodoro
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
