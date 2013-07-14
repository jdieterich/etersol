class Categorium < ActiveRecord::Base
  attr_accessible :nombre
    attr_accessible :productos_id
  has_many :productos
end
