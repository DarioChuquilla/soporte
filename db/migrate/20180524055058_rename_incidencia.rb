class RenameIncidencia < ActiveRecord::Migration
  def change
    rename_table :incidencia, :incidencias
  end
end
