class PagesController < ApplicationController
  #before_filter :authenticate_user!, except: [:home, :validar]
  
 #before_filter :authenticate_admin!, except: [:home, :validar]

  def authenticate_admin!
    # check if current user is admin
    unless current_user.username=='4386678'
      # if current_user is not admin redirect to some route
      redirect_to :root
    end
  end
  
  def home
  end

  def admin
  end
  
  def reporte
    @mesas = Mesa.all
    @centros = Centro.all
    @parroquias = Parroquium.all
    @municipios = Municipio.all
    @circuito = Circuito.find(1)
  end
  
  
  def total_mesa
    if params[:codigo].present?
      @mesa = Mesa.find_by_centro_id(params[:codigo])
      @centro = Centro.find_by_codigo(params[:codigo])
    else
      @mesas = Mesa.all
    end
  end
 
  
  def total_centro
    if params[:codigo]
      @mesa = Mesa.find_by_centro_id(params[:codigo])
      @centro = Centro.find_by_codigo(params[:codigo])
    else
      @centros = Centro.all
    end
    
   if params[:search]
      @search = Centro.search(params[:search])
   end
  end
 
 def ver_centro
    @centro = Centro.find_by_codigo(params[:codigo])
    @mesas = Mesa.where(centro_id: params[:codigo]).find_each
 end
 
def total_parroquia
  if params[:codigo].present?
    @centro = Centro.find_by_parroquia_id(params[:codigo])
    @parroquia = Parroquium.find_by_id(params[:codigo])
  else
    @parroquias = Parroquium.all
  end
end

 def ver_parroquia
    @parroquia = Parroquium.find_by_id(params[:codigo])
    @centros = Centro.where(parroquia_id: params[:codigo]).find_each
 end
  
  def ver_municipio
    @municipio = Municipio.find_by_id(params[:codigo])
    @parroquias = Parroquium.where(municipio_id: params[:codigo]).find_each
  end 
 
 
 
 
     def total_municipio
  if params[:codigo].present?
    @parroquia = Parroquium.find_by_municipio_id(params[:codigo])
    @municipio = Municipio.find_by_id(params[:codigo])
  else
    @municipios = Municipio.all
  end
  end
  
  def validar
     @codigo = params[:codigo]
    if @codigo == "roraima2015"
      redirect_to(new_user_registration_path)
   
    else
     redirect_to(:root, :notice => 'Codigo invalido')
    end
  end
  
  
  
  
end
