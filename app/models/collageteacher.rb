class Collageteacher < ApplicationRecord
    validates :fname, :lname, :mno, :subjectName, :experience, :qulification, :email, :adress, :postalcode,  presence: true
    validates :mno, length: { is: 10 }
    validates :postalcode, length: { is: 6 }
    validates :email, uniqueness: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
