class Credential < ApplicationRecord
  has_secure_password
  belongs_to :credentialed, polymorphic: true

  # We point to an enail that actually polymorphically belongs to a different thing.
  # Which is great.  So don't declare this to be a polymorphic relationship.  It isn't.
  belongs_to :email
  before_validation :grab_email_from_credentialed
  # validates :password, length: { minimum: 8 }, on: :create

  devise :omniauthable, omniauth_providers: [:google_oauth2]

  def grab_email_from_credentialed
    self.email ||= self.credentialed.email
  end

  def self.from_amniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |cred|
      cred.token = auth.credentials.token
      cred.expires = auth.credentials.expires
      cred.expires_at = auth.credentials.expires_at
      cred.refresh_token = auth.credentials.refresh_token
    end
  end
end
