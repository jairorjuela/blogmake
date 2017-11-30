class Entry < ActiveRecord::Base
  # Remember to create a migration!
  validates :body, :presence => true
  validates :title, :presence => true
  validates :author, :presence => true
end
