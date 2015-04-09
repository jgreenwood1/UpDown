class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,6}\z/i
  validates :password, presence: { on: :create }
  validates :password_confirmation, presence: { on: :create }
  validates :password_confirmation, presence: { on: [:create, :update] }, if: ->(user){ user.password.present? }
  validates :birthday, presence: true
  validates :gender, presence: true, inclusion: ["male", "female"]
end
