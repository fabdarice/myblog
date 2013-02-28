class Article
  include Mongoid::Document
  include Mongoid::Paperclip
  field :title
  field :content
  field :published_on, type: Time, default: -> { Time.now }
  field :category
  
  has_mongoid_attached_file :avatar, 
    :styles => {
        :small    => ['228x85!',   :jpg],
        :medium   => ['618x200!',    :jpg]
      }
      
  embeds_many :comments
  belongs_to :category


  validates :title, :content, :category, :presence => {:message => "Field cannot be empty."}
  validates_attachment_presence :avatar, :message => "Avatar mandatory."
end
