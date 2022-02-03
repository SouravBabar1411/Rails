class Player < ApplicationRecord
    belongs_to :sport
    has_many :achivements
    validates :player_name, format: { with:  /\A[a-zA-Z]+\z/ }
    validates :player_country, format: { with:  /\A[a-zA-Z]+\z/ }
    validate :custom_validation
    private def custom_validation
      if  (player_name=="")
        self.errors[:base] <<"plzz fill palyername"
      end
    end
    validate :custom_validation1
    private def custom_validation1
        if  (player_country=="")
          self.errors[:base] <<"plzz fill playercountry"
        end
    end
end
