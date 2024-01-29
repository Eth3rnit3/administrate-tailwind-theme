# frozen_string_literal: true

class User < ApplicationRecord
  has_many :messages, dependent: :destroy

  validates :email, presence: true, uniqueness: true,
                    format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email format' }

  validates :password, presence: true,
                       format: { with: /\A(?=.*[A-Z])(?=.*[!@#$%^&*])/, message: 'Password must contain at least one uppercase letter and one special character' },
                       length: { minimum: 8 }

  validates :country_code, presence: true, length: { minimum: 2 }
end
