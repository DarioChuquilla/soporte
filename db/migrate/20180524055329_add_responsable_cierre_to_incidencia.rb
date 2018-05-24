class AddResponsableCierreToIncidencia < ActiveRecord::Migration
  def change
    remove_column :users, :responsable_cierre_id, :integer
    add_column :incidencias, :responsable_cierre_id, :integer
  end
end
