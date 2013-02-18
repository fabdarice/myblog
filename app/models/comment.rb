class Comment
  include Mongoid::Document
  field :content
  field :author
  validates_presence_of :content, :author, :message => "This field cannot be empty."
  embedded_in :article
end
