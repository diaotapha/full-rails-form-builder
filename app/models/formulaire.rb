class Formulaire < ApplicationRecord
    has_many :questions
    has_many :candidats
    accepts_nested_attributes_for :questions, allow_destroy: true , :reject_if => lambda { |d| d[:title].blank?}
end
