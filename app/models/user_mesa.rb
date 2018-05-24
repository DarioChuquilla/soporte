class UserMesa < ActiveRecord::Base
  belongs_to :user
  belongs_to :departamento
end
