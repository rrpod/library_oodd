class User < ActiveRecord::Base
  has_secure_password

  ROLE = ['admin']

  def member?
    self.role == 'member'
  end

  def admin?
    self.role == 'admin'
  end
end
