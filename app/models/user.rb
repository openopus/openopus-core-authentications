class User < ApplicationRecord
  has_many :credentials, as: :credentialed, dependent: :destroy
  accepts_nested_attributes_for :credentials
end

