class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :blogs

def full_name
  [first_name, last_name].join(' ')
end

def full_name=(name)
  split = name.split(' ', 2)
  self.first_name = split.first
  self.last_name = split.last
end


end
