class User
  include Mongoid::Document
  include ActiveModel::SecurePassword

  has_many :flashcards

  field :username, type: String
  field :email, type: String
  
  field :password_digest, type: String

  has_secure_password
  validates :password, length: { minimum: 6}

  validates :username, presence: true, length: { maximum: 15 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }

end
