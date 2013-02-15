class Article
  include Mongoid::Document
  field :title
  field :content
  field :published_on, type: Date, default: -> { Time.now }
  validates :title, :content, :presence => {:message => "Field cannot be empty."}
end
