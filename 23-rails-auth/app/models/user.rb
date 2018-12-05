class User < ApplicationRecord
  has_secure_password

  # REMINDER 🔑
  # ACTIVE RECORD WILL BUILD YOU getters and setters

  # @user.username
  # @user.password
  #
  # def password=(plaintext_pw)
  #   self.password_digest = BCrypt::Password.create(plaintext_pw)
  # end
  #
  # def authenticate(pt_pw)
  #   if BCrypt::Password.new(self.password_digest) == pt_pw
  #     self
  #   else
  #     false
  #   end
  # end
  #


end
