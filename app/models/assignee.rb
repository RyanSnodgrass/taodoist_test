class Assignee < ActiveRecord::Base
	has_many :to_dos
	mount_uploader :avatar, AvatarUploader

end
