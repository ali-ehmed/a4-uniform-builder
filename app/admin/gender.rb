	ActiveAdmin.register Gender do
  menu parent: "Uniform Builder"
  permit_params :acs_gender_description, :gender
end
