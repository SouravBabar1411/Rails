class Achivement < ApplicationRecord
    belongs_to :player
    validate :custom_validation
    private def custom_validation
      if  (man_of_series==nil)
        self.errors[:base] <<"plzz.. fill the value"
      end
    end
end
