class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true, uniqueness: true
  validates :age, presence: true, numericality: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many  :submissions

  def full_name
  	first_name + " " + last_name
  end

  def expert?

  end
end
