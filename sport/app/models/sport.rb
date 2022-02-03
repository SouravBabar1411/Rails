class Sport < ApplicationRecord
    has_many :players
    has_one :caption
    validate :custom_validation
    private def custom_validation
      if  (sport_name=="")
        self.errors[:base] <<"plzz fill sport name"
      end
    end
end
