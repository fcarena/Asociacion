class AportesController < ApplicationController
  before_filter :require_login
  # GET /aportes
  # GET /aportes.json
  def mostrar_aportes
    @aportes = Aporte.where(:socio_id=>params[:socio_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aportes }
    end
  end
  

  # GET /aportes/1
  # GET /aportes/1.json
  def show
    @aporte = Aporte.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aporte }
    end
  end

  # GET /aportes/new
  # GET /aportes/new.json
  def new
    @aporte = Aporte.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aporte }
    end
  end

  # GET /aportes/1/edit
  def edit
    @aporte = Aporte.find(params[:id])
  end

  # POST /aportes
  # POST /aportes.json
  def create
    @aporte = Aporte.new(params[:aporte])
    aux=@aporte.socio_id
    respond_to do |format|
         @aporte.save
        format.html { 
          redirect_to intermedio_mostrar_aportes_path(:socio_id => aux)}
        
    end
  end

  # PUT /aportes/1
  # PUT /aportes/1.json
  def update
    @aporte = Aporte.find(params[:id])
    aux=@aporte.socio_id
    respond_to do |format|
      if @aporte.update_attributes(params[:aporte])
        format.html { redirect_to intermedio_mostrar_aportes_path(:socio_id=>aux)  }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aportes/1
  # DELETE /aportes/1.json
  def destroy
    @aporte = Aporte.find(params[:id])
    @aporte.destroy

    respond_to do |format|
      format.html { redirect_to aportes_url }
      format.json { head :no_content }
    end
  end
end
