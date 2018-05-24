class Departamento < ActiveRecord::Base
  belongs_to :responsable, class_name: :user
  has_many :user_mesas
  has_many :usuarios, through: :user_mesas, class_name: :user
  
  validates :nombre, presence: {message: "de departamento es requerido."}
  
end
