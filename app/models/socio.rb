class Socio < ActiveRecord::Base
  attr_accessible :apellido, :ci, :correo, :departament_id, :direccion, :nombre, :tel, :tipo, :id
  has_many :prestamos
  belongs_to :departament
  has_many :aportes
  validates_associated :prestamos
  
  def nombre_completo
  	"#{nombre} #{apellido}"
  end
end
