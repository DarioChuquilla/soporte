class CreateDepartamentos < ActiveRecord::Migration
  def change
    create_table :departamentos do |t|
      t.string :nombre
      t.references :user, index: true, foreign_key: "responsable_id"

      t.timestamps
    end
  end
end
