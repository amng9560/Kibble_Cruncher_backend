class User < ApplicationRecord
    has_secure_password
    has_many :pets

    validates :username, presence: true, uniqueness: true
    validates :password, presence: true
    validates :firstname, presence: true
    validates :lastname, presence: true

    # login = {
    #     username: ENV["APP_USERNAME"]
    #     password: ENV["APP_PASSWORD"]
    # }
end
