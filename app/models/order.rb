class Order < ApplicationRecord
	belongs_to :user, foreign_key: "customer_id"
	belongs_to :admin_user, foreign_key: "customer_id"
end
