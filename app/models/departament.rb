class Departament < ActiveRecord::Base
  attr_accessible :descripcion
  has_many :socios
end
