class Picture < ApplicationRecord
	mount_uploader :picture_name, ImageUploader

end
