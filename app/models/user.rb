class User < ActiveRecord::Base
  has_secure_password
  #attr_accessor :password
  #attr_accessible :username, :email, :password, :password_confirmation
  ROLE = ['admin']

  validates :first_name, presence: true
  validates :last_name, presence:true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true,:confirmation =>true
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
