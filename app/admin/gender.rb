ActiveAdmin.register Gender do
  menu parent: "Uniform Builder"
  permit_params :acs_gender_description, :gender
  action_item :add, only: :show do
    link_to "New Gender", :new_admin_gender
  end
end
