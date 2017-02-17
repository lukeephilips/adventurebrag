class Place < ActiveRecord::Base
  has_many :adventures
  validates :name, :presence => true
  include Filterable
  scope :region, -> (region) {where region: region}
end
