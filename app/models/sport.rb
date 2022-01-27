class Sport < ApplicationRecord
    has_many :players
    validate :custom_validation
    private def custom_validation
      if  (sport_name=="")
        self.errors[:base] <<"plzz fill sport name"
      end
    end
end
