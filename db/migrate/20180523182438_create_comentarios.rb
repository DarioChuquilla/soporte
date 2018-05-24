class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.references :user, index: true, foreign_key: true
      t.references :incidencia, index: true, foreign_key: true
      t.text :comentario

      t.timestamps
    end
  end
end
