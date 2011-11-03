class CategoriaDeUsuariosController < ApplicationController
  # GET /categoria_de_usuarios
  # GET /categoria_de_usuarios.json
  def index
    @categoria_de_usuarios = CategoriaDeUsuario.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @categoria_de_usuarios }
    end
  end

  # GET /categoria_de_usuarios/1
  # GET /categoria_de_usuarios/1.json
  def show
    @categoria_de_usuario = CategoriaDeUsuario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @categoria_de_usuario }
    end
  end

  # GET /categoria_de_usuarios/new
  # GET /categoria_de_usuarios/new.json
  def new
    @categoria_de_usuario = CategoriaDeUsuario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @categoria_de_usuario }
    end
  end

  # GET /categoria_de_usuarios/1/edit
  def edit
    @categoria_de_usuario = CategoriaDeUsuario.find(params[:id])
  end

  # POST /categoria_de_usuarios
  # POST /categoria_de_usuarios.json
  def create
    @categoria_de_usuario = CategoriaDeUsuario.new(params[:categoria_de_usuario])

    respond_to do |format|
      if @categoria_de_usuario.save
        format.html { redirect_to @categoria_de_usuario, :notice => 'Categoria de usuario was successfully created.' }
        format.json { render :json => @categoria_de_usuario, :status => :created, :location => @categoria_de_usuario }
      else
        format.html { render :action => "new" }
        format.json { render :json => @categoria_de_usuario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /categoria_de_usuarios/1
  # PUT /categoria_de_usuarios/1.json
  def update
    @categoria_de_usuario = CategoriaDeUsuario.find(params[:id])

    respond_to do |format|
      if @categoria_de_usuario.update_attributes(params[:categoria_de_usuario])
        format.html { redirect_to @categoria_de_usuario, :notice => 'Categoria de usuario was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @categoria_de_usuario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /categoria_de_usuarios/1
  # DELETE /categoria_de_usuarios/1.json
  def destroy
    @categoria_de_usuario = CategoriaDeUsuario.find(params[:id])
    @categoria_de_usuario.destroy

    respond_to do |format|
      format.html { redirect_to categoria_de_usuarios_url }
      format.json { head :ok }
    end
  end
end
