class Rijschool < ActiveRecord::Base
  validates :name,        presence: true, length: { manimum: 5,  maximum: 40}
  validates :description, presence: true, length: { minimum: 0,  maximum: 150}
  validates :link,        presence: true, length: { minimum: 30, maximum: 100}
  
end