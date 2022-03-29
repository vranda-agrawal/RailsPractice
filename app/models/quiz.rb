class Quiz < ApplicationRecord
  include PgSearch::Model
	multisearchable against: [:quesion_number]
end
