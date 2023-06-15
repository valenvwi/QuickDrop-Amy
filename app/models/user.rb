class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # :registerable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

 has_many :orders_as_customer, class_name: "Order", foreign_key: :customer_id
 has_many :orders_as_driver, class_name: "Order", foreign_key: :driver_id
end
