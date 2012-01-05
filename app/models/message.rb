class Message
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  
  attr_accessor :name, :email, :content, :flag
  
  validates_presence_of :name, :email, :content
  validates_format_of :email, :with => %r{.+@.+\..+}, :allow_blank => true
  
  validates :flag, :spam => true
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end
  
  private
  
end