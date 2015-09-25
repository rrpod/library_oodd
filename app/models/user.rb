class User < ActiveRecord::Base
  has_secure_password
  attr_accessor :password, :password_confirmation
  #attr_accessible :username, :email, :password, :password_confirmation
  ROLE = ['admin']

  validates :first_name, presence: true, length: { maximum: 50 }, message: 'First name too long'
  validates :last_name, presence: true, length: { maximum: 50 }, message: 'Last name too long'
  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }, presence: true,:confirmation =>true
  #validates_confirmation_of :password
  #validates_presence_of :password_confirmation

  ROLE = ['admin']

  def member?
    self.role == 'member'
  end

  def admin?
    self.role == 'admin'
  end
end
