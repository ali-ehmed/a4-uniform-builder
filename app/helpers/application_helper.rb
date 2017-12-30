module ApplicationHelper
  def show_svg(path)
    File.open(Rails.root.join("public/#{path}"), "rb") do |file|
      raw file.read
    end
  end
end
