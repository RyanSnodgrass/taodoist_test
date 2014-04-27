class Assignee < ActiveRecord::Base
	belongs_to :to_do

	mount_uploader :avatar, AvatarUploader

end
