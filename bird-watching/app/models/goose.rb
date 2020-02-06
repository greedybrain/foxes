class Goose < ApplicationRecord
    validates_presence_of :name, :park_id
    validates :name, :uniqueness => true
end
