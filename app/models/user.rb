class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  validates_presence_of :first_name, :last_name

  def initials
  	s1 = self.first_name[0]
  	s2 = self.last_name[0]
  	return s1 + s2
  end
end
