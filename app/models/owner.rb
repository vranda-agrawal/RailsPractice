class Owner < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
end
