class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.text :conteudo

      t.timestamps
    end
  end
end
