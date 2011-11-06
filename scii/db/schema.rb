# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111106202427) do

  create_table "atributos", :force => true do |t|
    t.string   "nome"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "atributos", ["usuario_id"], :name => "index_atributos_on_usuario_id"

  create_table "categoria_de_acessos", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categoria_de_usuarios", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coordenadas", :force => true do |t|
    t.integer  "coord_x"
    t.integer  "coord_y"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faz_comentarios", :force => true do |t|
    t.string   "conteudo"
    t.integer  "usuario_id"
    t.integer  "imagem_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "faz_comentarios", ["imagem_id"], :name => "index_faz_comentarios_on_imagem_id"
  add_index "faz_comentarios", ["usuario_id"], :name => "index_faz_comentarios_on_usuario_id"

  create_table "imagems", :force => true do |t|
    t.string   "url"
    t.string   "descricao"
    t.integer  "pontuacao"
    t.date     "data_upload"
    t.integer  "coordenada_id"
    t.integer  "usuario_id"
    t.integer  "tipo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "imagems", ["coordenada_id"], :name => "index_imagems_on_coordenada_id"
  add_index "imagems", ["tipo_id"], :name => "index_imagems_on_tipo_id"
  add_index "imagems", ["usuario_id"], :name => "index_imagems_on_usuario_id"

  create_table "imagems_atributos", :id => false, :force => true do |t|
    t.integer "imagem_id"
    t.integer "atributo_id"
  end

  add_index "imagems_atributos", ["atributo_id"], :name => "index_imagems_atributos_on_atributo_id"
  add_index "imagems_atributos", ["imagem_id"], :name => "index_imagems_atributos_on_imagem_id"

  create_table "objetos", :force => true do |t|
    t.string   "descricao"
    t.integer  "coordenada_id"
    t.integer  "atributo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "objetos", ["atributo_id"], :name => "index_objetos_on_atributo_id"
  add_index "objetos", ["coordenada_id"], :name => "index_objetos_on_coordenada_id"

  create_table "sugestaos", :force => true do |t|
    t.string   "texto"
    t.integer  "pontuacao"
    t.integer  "imagem_id"
    t.integer  "atributo_id"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sugestaos", ["atributo_id"], :name => "index_sugestaos_on_atributo_id"
  add_index "sugestaos", ["imagem_id"], :name => "index_sugestaos_on_imagem_id"
  add_index "sugestaos", ["usuario_id"], :name => "index_sugestaos_on_usuario_id"

  create_table "tipos", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "nome"
    t.integer  "potuacao"
    t.integer  "catetoria_de_usuario_id"
    t.integer  "catetoria_de_acesso_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["catetoria_de_acesso_id"], :name => "index_usuarios_on_catetoria_de_acesso_id"
  add_index "usuarios", ["catetoria_de_usuario_id"], :name => "index_usuarios_on_catetoria_de_usuario_id"

  create_table "usuarios_sugestaos", :id => false, :force => true do |t|
    t.integer "usuario_id"
    t.integer "sugestao_id"
  end

  add_index "usuarios_sugestaos", ["sugestao_id"], :name => "index_usuarios_sugestaos_on_sugestao_id"
  add_index "usuarios_sugestaos", ["usuario_id"], :name => "index_usuarios_sugestaos_on_usuario_id"

end
