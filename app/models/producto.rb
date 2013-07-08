class Producto < ActiveRecord::Base
  attr_accessible :descripcion, :nombre, :precio
end
