class Tag < ActiveRecord::Base
  # Remember to create a migration!
  validates :tag_name, :presence => true
end
