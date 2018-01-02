ActiveAdmin.register Sport do
  menu parent: "Uniform Builder"
  permit_params :is_featured, :sport_name, :acs_sales_category_code, :acs_sales_category_description,:marketing_category, :image, :sport_image
  action_item :add, only: :show do
    link_to "New Sport", :new_admin_sport
  end

end
