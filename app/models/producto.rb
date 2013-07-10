class Producto < ActiveRecord::Base
  attr_accessible :imagen
  has_attached_file :imagen, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  attr_accessible :descripcion, :nombre, :precio
end
