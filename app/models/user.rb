class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: {case_sensitive: false}, length: {minimum: 3, maximum: 25}
  VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,    presence: true, uniqueness: {case_sensitive: false}, format: {with: VALID_EMAIL_REGEX}
  validates :initials, presence: true
  validates :fname,    presence: true   
  validates :lname,    presence: true
  validates :sex,      presence: true
  validates :add1,     presence: true
  validates :city,     presence: true  
  validates :postcode, presence: true
  has_secure_password
end