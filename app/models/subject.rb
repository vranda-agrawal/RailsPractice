class Subject < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:name]
end
