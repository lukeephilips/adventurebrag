class Adventure < ActiveRecord::Base
  belongs_to :place
  belongs_to :user 
  validates :name, :presence => true
end
