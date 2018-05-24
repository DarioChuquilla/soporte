class CreateUserMesas < ActiveRecord::Migration
  def change
    create_table :user_mesas do |t|
      t.references :user, index: true, foreign_key: true
      t.references :departamento, index: true, foreign_key: true

      t.timestamps
    end
  end
end
