
class Product < ApplicationRecord
	validates :title, :description , :image_url , presence: true
	validates :price, numericality:{greater_than_or_equal_to:0.01}
	validates :title, uniqueness: true 
	#validates :image_url, allow_blank: true ,format: {
		#with: %{\.(gif \ jpg \ png) \Z}i , 
		#message: 'must be URL for GIF,JPG or PNG image.'}

	validates :image_url, format: {with: /\.(png|jpg|gif)\Z/i}	

end
