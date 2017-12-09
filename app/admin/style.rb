ActiveAdmin.register Style do
  menu parent: "Others"
  permit_params :description, :name, :category, :colour, :image
end
