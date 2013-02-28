class Comment
  include Mongoid::Document
  field :content
  field :author
  field :published_on, type: Time, default: -> { Time.now }
  validates_presence_of :content, :author, :message => "This field cannot be empty."
  embedded_in :article, :inverse_of => :comments
end
