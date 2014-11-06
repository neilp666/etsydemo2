class Listing < ActiveRecord::Base
	validates :name, :description, :price, presence:true
	validates :price, numericality: { greater_than: 0}

	belongs_to :user
	belongs_to :category
	has_many :orders

end
