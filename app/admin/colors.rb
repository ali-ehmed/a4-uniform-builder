ActiveAdmin.register Color do
  permit_params :code, :color, :design_id, :style_id, :sport_id
  menu parent: "Others"
end
