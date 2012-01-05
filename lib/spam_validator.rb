class SpamValidator < ActiveModel::EachValidator
  def validate_each object, attribute, value
    object.errors[""] << "Identified as spam" unless value.length == 0
  end
end