class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :first_name, on: :create, message: "can't be blank"
  validates_presence_of :last_name, on: :create, message: "can't be blank"

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
