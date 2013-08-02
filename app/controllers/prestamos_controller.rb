class PrestamosController < ApplicationController
  before_filter :require_login
 
  # GET /prestamos
  # GET /prestamos.json
  def mostrar_prestamos
    @prestamos = Prestamo.where(:socio_id=>params[:socio_id])
#puts "ACAAAAAAAAAAAAAAAAAAAAAAAAAAA"
 #   puts params[:monto]
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prestamos }
    end
  end
   

  # GET /prestamos/1
  # GET /prestamos/1.json
  def show
    @prestamo = Prestamo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prestamo }
    end
  end

  # GET /prestamos/new
  # GET /prestamos/new.json
  def new
    @prestamo = Prestamo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prestamo }
    end
  end

  # GET /prestamos/1/edit
  def edit
    @prestamo = Prestamo.find(params[:id])
  end

  # POST /prestamos
  # POST /prestamos.json
  def create
    @prestamo = Prestamo.new(params[:prestamo])
    aux=@prestamo.socio_id
    respond_to do |format|
       @prestamo.save
        format.html { redirect_to intermedio_mostrar_prestamos_path(:socio_id => aux)}
    end
  end

  # PUT /prestamos/1
  # PUT /prestamos/1.json
  def update
    @prestamo = Prestamo.find(params[:id])

    respond_to do |format|
       @prestamo.update_attributes(params[:prestamo])
        format.html { redirect_to prestamos_url }
    end
  end

  # DELETE /prestamos/1
  # DELETE /prestamos/1.json
  def destroy
    @prestamo = Prestamo.find(params[:id])
    @prestamo.destroy

    respond_to do |format|
      format.html { redirect_to prestamos_url }
      format.json { head :no_content }
    end
  end
end
