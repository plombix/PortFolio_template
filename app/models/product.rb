class Product < ActiveRecord::Base
	mount_uploader :pict, PictUploader
end
