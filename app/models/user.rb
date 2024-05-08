class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  before_save :set_confirmed_at_if_needed

  private

  def set_confirmed_at_if_needed
    self.confirmed_at = Time.now unless confirmed?
  end
end
