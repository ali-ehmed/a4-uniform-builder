ActiveAdmin.register Design do
  menu parent: "Others"
  permit_params :description, :name, :category, :colour, :image
end
