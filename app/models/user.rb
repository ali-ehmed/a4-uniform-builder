class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :sent_notifications, class_name: "Notification", :dependent => :destroy, :foreign_key => 'sender_id',  as:  :sender
  has_many :received_notifications, class_name: "Notification", :dependent => :destroy, :foreign_key => 'receiver_id',as:  :receiver

  ## order associations
  has_many  :orders, foreign_key: "customer_id", dependent: :destroy
  has_many  :sales, foreign_key: "customer_id", dependent: :destroy

  has_many  :colors
end
