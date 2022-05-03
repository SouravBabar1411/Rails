class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  
  mount_uploader :image, ImageUploader

   # Enum role for users      
   enum role: [:super_admin, :user]
   after_initialize :set_default_role, :if => :new_record?
   def set_default_role
     self.role ||= :user
   end
end
