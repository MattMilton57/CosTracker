class User < ApplicationRecord
    has_many :productions
    has_secure_password
    
end
