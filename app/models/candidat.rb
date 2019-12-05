class Candidat < ApplicationRecord
  belongs_to :formulaire
  serialize :responses , Hash
end
