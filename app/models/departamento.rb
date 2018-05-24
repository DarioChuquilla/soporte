class Departamento < ActiveRecord::Base
  belongs_to :user
  has_many :user_mesas
  has_many :users, through: :user_mesas
  
  validates :nombre, presence: {message: "de departamento es requerido."}
  
end
