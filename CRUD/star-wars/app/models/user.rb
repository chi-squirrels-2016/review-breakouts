class User < ActiveRecord::Base

  has_many :votes, foreign_key: :voter_id
  has_many :voted_on_quotes, through: :votes, source: :quote
  has_many :authored_quotes, class_name: "Quote", foreign_key: :author_id

  validates :username, presence: true

  validate :validate_password

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @raw_password = new_password
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def validate_password
    if @raw_password.nil?
      errors.add(:password, "Password is required")
    elsif @raw_password.length < 6
      errors.add(:password, "Must be 6 characters or longer")
    end
  end

  def self.authenticate(username, password)
    user = User.find_by(username: username)

    if user && user.password == password
      user
    else
      nil
    end
  end
end
