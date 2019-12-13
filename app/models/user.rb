class User < ApplicationRecord
    validates :email,presence: true, uniqueness: true
    validates :email, :uniqueness => { :case_sensitive => false }
    validates :password,presence: true
    validates :status,presence: true

    STATUS = {
        logout: 0,
        login: 1,
        stop: 2,
        resume: 3
      }.freeze
      enum status: STATUS
end
