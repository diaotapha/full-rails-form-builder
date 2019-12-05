class Question < ApplicationRecord
  belongs_to :formulaire
  has_many :options
  accepts_nested_attributes_for :options , allow_destroy: true, :reject_if => lambda { |d| d[:title].blank?}

  TYPE_FIELDS = [
    {key: "text"      , value:  "text_field"},
    {key: "long text" , value: "text_area"},
    {key: "checkbox"  , value: "check_box"},
    {key: "Select"    , value: "select"},
    {key: "nombre"    , value: "number_field"},
    {key: "date"    , value: "date_select"},
    {key: "radio"    , value: "radio_button"}
  ]

end
