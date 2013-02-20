class Category
  include Mongoid::Document
  field :name
  has_many :articles

  validates_presence_of :name, :message => "Field cannot be empty."
end
