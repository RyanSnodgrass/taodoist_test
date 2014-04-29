class Assignee < ActiveRecord::Base
	has_many :to_dos
	mount_uploader :avatar, AvatarUploader

	after_destroy :delete_all_to_dos # relying on has_many relation record

	def delete_all_to_dos
		to_dos.destroy_all # dont need self- it is implied
	end

end
