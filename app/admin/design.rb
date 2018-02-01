ActiveAdmin.register Design do
  menu parent: "Uniform Builder"
  permit_params :description, :name, :category, :colour, :image
end
