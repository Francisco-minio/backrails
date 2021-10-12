class Usuario < ApplicationRecord
  belongs_to :role
  has_secure_password
end
