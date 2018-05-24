class Incidencia < ActiveRecord::Base
  belongs_to :responsable, class_name: :user, foreign_key: "uaer_id"
  belongs_to :responsable_cierre, class_name: :user, foreign_key: "responsable_cierre_id"
  belongs_to :departamento
  
  scope :not_assigned, -> { where("user_id IS NULL") }
  scope :with_departamento, -> { where("departamento_id IS NOT NULL") }
  scope :completed, -> { where("user_id IS NOT NULL AND responsable_cierre_id IS NOT NULL") }
end
