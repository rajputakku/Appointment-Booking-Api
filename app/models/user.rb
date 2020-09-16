class User < ApplicationRecord
	has_secure_password
	has_many :doctors, through: :appointments 
  	has_many :appointments
end
