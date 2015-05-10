class Store < ActiveRecord::Base
  belongs_to :region
  has_many :orders
end
