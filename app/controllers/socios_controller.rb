class SociosController < ApplicationController
  before_filter :require_login
  # GET /socios
  # GET /socios.json
  def index
    @socios = Socio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @socios }
    end
  end

  # GET /socios/1
  # GET /socios/1.json
  def show
    @socio = Socio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @socio }
    end
  end

  # GET /socios/new
  # GET /socios/new.json
  def new
    @socio = Socio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @socio }
    end
  end

  # GET /socios/1/edit
  def edit
    @socio = Socio.find(params[:id])
  end

  # POST /socios
  # POST /socios.json
  def create
    @socio = Socio.new(params[:socio])

    respond_to do |format|
        @socio.save
        format.html { redirect_to socios_url}
    end
  end

  # PUT /socios/1
  # PUT /socios/1.json
  def update
    @socio = Socio.find(params[:id])

    respond_to do |format|
      if @socio.update_attributes(params[:socio])
        format.html { redirect_to @socio, notice: 'Socio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @socio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /socios/1
  # DELETE /socios/1.json
  def destroy
    @socio = Socio.find(params[:id])
    @socio.destroy

    respond_to do |format|
      format.html { redirect_to socios_url }
      format.json { head :no_content }
    end
  end
end
