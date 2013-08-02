class IntermediosController < ApplicationController
  def intermedio_prestamos
  	 @prestamos = Prestamo.where(:socio_id=>params[:socio_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prestamos }
    end
  end

  def intermedio_aportes
  	 @aportes = Aporte.where(:socio_id=>params[:socio_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aportes }
    end
  end
end
