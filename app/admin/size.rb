ActiveAdmin.register Size do
  permit_params :size, :available, :size_country, :style_ids
  menu parent: "Uniform Builder"
end
