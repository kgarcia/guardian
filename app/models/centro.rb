class Centro < ActiveRecord::Base
  belongs_to :parroquia
  
    def self.search(query)
       where("nombre LIKE ? or codigo LIKE ?",'%'+query+'%', '%'+query+'%')
    end
  
     def total_lista
        centro_lista = 0
        @mesas = Mesa.where(centro_id: self[:codigo])
        @mesas.each do |mesa|
          centro_lista += mesa.lista
        end
        centro_lista
     end
    
    def total_teodoro
        centro_teodoro = 0
        @mesas = Mesa.where(centro_id: self[:codigo])
        @mesas.each do |mesa|
          centro_teodoro += mesa.teodoro
        end
        centro_teodoro
    end
    
    def total_marquina
        centro_marquina = 0
        @mesas = Mesa.where(centro_id: self[:codigo])
        @mesas.each do |mesa|
          centro_marquina += mesa.marquina
        end
        centro_marquina
    end
    
    
    
    def total_nulo
        centro_nulo = 0
        @mesas = Mesa.where(centro_id: self[:codigo])
        @mesas.each do |mesa|
          centro_nulo += mesa.nulo
        end
        centro_nulo
    end
    
       def total_total
        centro_total = 0
        @mesas = Mesa.where(centro_id: self[:codigo])
        @mesas.each do |mesa|
          centro_total += mesa.votos
        end
        centro_total
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
    prom_unidad= (total_lista+total_marquina+total_teodoro)*100/total_total
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
