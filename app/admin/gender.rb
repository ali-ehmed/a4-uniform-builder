	ActiveAdmin.register Gender do
  menu parent: "Others"
  permit_params :acs_gender_description, :gender
end
