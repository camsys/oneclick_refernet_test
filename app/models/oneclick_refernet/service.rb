module OneclickRefernet
  class Service < ApplicationRecord
    belongs_to :sub_sub_category
    has_one :sub_category, through: :sub_sub_category
    has_one :category, through: :sub_category
  end
end
