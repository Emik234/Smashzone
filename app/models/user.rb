class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 #    has_secure_password
	# validates_confirmation_of :password
	# validates_prescence_of :password, on: :create
end
