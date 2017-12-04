ActiveAdmin.register Sport do
  permit_params :category, :image,:available_till, :items_in_stock, :acs_code
end
