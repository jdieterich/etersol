class EtersolController < ApplicationController
  def inicio
  end
  def ubicacion
  end
  def cotizar  	
  end

  def enviar_email
  	name = params[:name]
    email = params[:email]
    message = params[:message]
  	MyMailer.cotizacion(name,email,message).deliver
  end
end
