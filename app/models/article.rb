class Article
  include Mongoid::Document
  include Mongoid::Paperclip
  field :title
  field :content
  field :published_on, type: Date, default: -> { Time.now }
  
  has_mongoid_attached_file :avatar, 
    :styles => {
        :small    => ['228x91!',   :jpg],
        :medium   => ['618x246!',    :jpg]
      }
  embeds_many :comments

  validates :title, :content, :presence => {:message => "Field cannot be empty."}
end
