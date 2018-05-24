class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  mount_uploader :avatar, AttachmentUploader
  
  has_many :departamentos
  has_many :user_mesas
  has_many :mesas, through: :user_mesas, class_name: :departamento
  
  def full_name
    if self.nombre.present? && self.apellido.present?
      self.nombre + " " + self.apellido
    else
      self.email
    end
  end
end
