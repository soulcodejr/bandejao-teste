class User < ActiveRecord::Base

   enum role: [:user, :ad, :nutri, :admin]
   after_initialize :set_default_role, :if => :new_record?

   def set_default_role
     self.role ||= :user
   end

   # [ 0 1 2 3]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
