class AddResponsableCierreIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :responsable_cierre_id, :integer
  end
end
