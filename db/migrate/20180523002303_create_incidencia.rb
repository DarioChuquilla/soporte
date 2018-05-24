class CreateIncidencia < ActiveRecord::Migration
  def change
    drop_table :incidencia
    create_table :incidencia do |t|
      t.string :tipo_error
      t.datetime :fecha_error
      t.text :descripcion_solucion
      t.string :codigo_error
      t.text :descripcion
      t.string :fuente_error
      t.datetime :fecha_escalamiento
      t.references :user, index: true, foreign_key: "responsable_id"
      t.references :user, index: true, foreign_key: "responsable_cierre_id"
      t.references :departamento, index: true, foreign_key: true
      t.string :estado
      t.text :descripcion_estado

      t.timestamps
    end
  end
end
