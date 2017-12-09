ActiveAdmin.register Sale do
	permit_params :customer_id, :order_id, :is_completed, :notification_id
end
