class Book < ActiveRecord::Base
  STATUS = ['available', 'checked out']
 #attr_accessor :title, :isbn, :author, :status

  validates :title, presence: true, uniqueness: true
  validates :isbn , presence: true
  validates :author , presence: true
  validates :status , presence: true
  validates :description , presence: true

  def self.search(query)

    where(['title LIKE ? OR isbn ILIKE ? or status ILIKE ? or author ILIKE ? or description ILIKE ?', "%#{query}%", "%#{query}%","%#{query}%","%#{query}%","%#{query}%"])

  end

  def checkedout?
    self.role == 'checkedout'
  end


end
