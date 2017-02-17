class Place < ActiveRecord::Base
  has_many :adventures
  validates :name, :presence => true
end
