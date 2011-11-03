class CoordenadasController < ApplicationController
  # GET /coordenadas
  # GET /coordenadas.json
  def index
    @coordenadas = Coordenada.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @coordenadas }
    end
  end

  # GET /coordenadas/1
  # GET /coordenadas/1.json
  def show
    @coordenada = Coordenada.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @coordenada }
    end
  end

  # GET /coordenadas/new
  # GET /coordenadas/new.json
  def new
    @coordenada = Coordenada.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @coordenada }
    end
  end

  # GET /coordenadas/1/edit
  def edit
    @coordenada = Coordenada.find(params[:id])
  end

  # POST /coordenadas
  # POST /coordenadas.json
  def create
    @coordenada = Coordenada.new(params[:coordenada])

    respond_to do |format|
      if @coordenada.save
        format.html { redirect_to @coordenada, :notice => 'Coordenada was successfully created.' }
        format.json { render :json => @coordenada, :status => :created, :location => @coordenada }
      else
        format.html { render :action => "new" }
        format.json { render :json => @coordenada.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /coordenadas/1
  # PUT /coordenadas/1.json
  def update
    @coordenada = Coordenada.find(params[:id])

    respond_to do |format|
      if @coordenada.update_attributes(params[:coordenada])
        format.html { redirect_to @coordenada, :notice => 'Coordenada was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @coordenada.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /coordenadas/1
  # DELETE /coordenadas/1.json
  def destroy
    @coordenada = Coordenada.find(params[:id])
    @coordenada.destroy

    respond_to do |format|
      format.html { redirect_to coordenadas_url }
      format.json { head :ok }
    end
  end
end
