class Client < ApplicationRecord

  validates :email, format: { with: /([^\.@]+)(?:\.([^@]+))?@([^@]+)/ }
end
