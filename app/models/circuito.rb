class Circuito < ActiveRecord::Base
    
 def total_lista
        circuito_lista = 0
	@municipios= Municipio.all        
        @municipios.each do |municipio|
          
        circuito_lista += municipio.total_lista
         
        end
        circuito_lista
     end
    
    def total_teodoro
        circuito_teodoro = 0
        @municipios = Municipio.all
        @municipios.each do |municipio|
          circuito_teodoro += municipio.total_teodoro
        end
        circuito_teodoro
    end
    
    def total_marquina
        circuito_marquina = 0
        @municipios = Municipio.all
        @municipios.each do |municipio|
          circuito_marquina += municipio.total_marquina
        end
        circuito_marquina
    end
    
    def total_nulo
        circuito_nulo = 0
        @municipios = Municipio.all
        @municipios.each do |municipio|
          circuito_nulo += municipio.total_nulo
        end
        circuito_nulo
    end
    
    def total_total
        circuito_total = 0
        @municipios = Municipio.all
        @municipios.each do |municipio|
          circuito_total += municipio.total_total
        end
        circuito_total
    end
    
     def electores
     
        elec = 0
        @municipios = Municipio.all
        @municipios.each do |municipio|
          elec += municipio.electores          
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
    abs=(electores-total_total)*100/electores
  end
end
  
end

