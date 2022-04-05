class Event < ApplicationRecord
    has_many :comments, inverse_of: :event
    accepts_nested_attributes_for :comments, allow_destroy: true, reject_if: :all_blank
end
