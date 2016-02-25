class Product < ActiveRecord::Base
	mount_uploader :pict, PictUploader
	has_many :likes , dependent: :destroy
	def total_likes
		self.likes.count
	end
end
