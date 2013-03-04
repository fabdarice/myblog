class Contact
  include Mongoid::Document
  field :name
  field :email
  field :content

  attr_accessible :name, :email, :content
  validates :name, :email, :content, :presence => { :message => "Field cannot be empty."}
end
