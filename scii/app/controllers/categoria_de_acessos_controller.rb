class CategoriaDeAcessosController < ApplicationController
  # GET /categoria_de_acessos
  # GET /categoria_de_acessos.json
  def index
    @categoria_de_acessos = CategoriaDeAcesso.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @categoria_de_acessos }
    end
  end

  # GET /categoria_de_acessos/1
  # GET /categoria_de_acessos/1.json
  def show
    @categoria_de_acesso = CategoriaDeAcesso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @categoria_de_acesso }
    end
  end

  # GET /categoria_de_acessos/new
  # GET /categoria_de_acessos/new.json
  def new
    @categoria_de_acesso = CategoriaDeAcesso.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @categoria_de_acesso }
    end
  end

  # GET /categoria_de_acessos/1/edit
  def edit
    @categoria_de_acesso = CategoriaDeAcesso.find(params[:id])
  end

  # POST /categoria_de_acessos
  # POST /categoria_de_acessos.json
  def create
    @categoria_de_acesso = CategoriaDeAcesso.new(params[:categoria_de_acesso])

    respond_to do |format|
      if @categoria_de_acesso.save
        format.html { redirect_to @categoria_de_acesso, :notice => 'Categoria de acesso was successfully created.' }
        format.json { render :json => @categoria_de_acesso, :status => :created, :location => @categoria_de_acesso }
      else
        format.html { render :action => "new" }
        format.json { render :json => @categoria_de_acesso.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /categoria_de_acessos/1
  # PUT /categoria_de_acessos/1.json
  def update
    @categoria_de_acesso = CategoriaDeAcesso.find(params[:id])

    respond_to do |format|
      if @categoria_de_acesso.update_attributes(params[:categoria_de_acesso])
        format.html { redirect_to @categoria_de_acesso, :notice => 'Categoria de acesso was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @categoria_de_acesso.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /categoria_de_acessos/1
  # DELETE /categoria_de_acessos/1.json
  def destroy
    @categoria_de_acesso = CategoriaDeAcesso.find(params[:id])
    @categoria_de_acesso.destroy

    respond_to do |format|
      format.html { redirect_to categoria_de_acessos_url }
      format.json { head :ok }
    end
  end
end
