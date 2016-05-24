class User < ActiveRecord::Base
    
    validates :name, presence: true, length: {maximum: 10 }
    
    has_secure_password
end
