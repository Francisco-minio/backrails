class User < ApplicationRecord
    has_secure_password
    enum role: %i[user client admin].freeze

  validates :email,
            format: { with: URI::MailTo::EMAIL_REGEXP },
            presence: true,
            uniqueness: { case_sensitive: false }
end
