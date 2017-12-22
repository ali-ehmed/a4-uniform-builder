ActiveAdmin.register Sport do
  menu parent: "Uniform Builder"
  permit_params :acs_sales_category_code, :acs_sales_category_description,:marketing_category, :image, :sport_image
end
