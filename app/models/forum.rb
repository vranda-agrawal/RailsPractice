class Forum < ApplicationRecord
	resourcify
	has_many :users,through: :roles 
end
