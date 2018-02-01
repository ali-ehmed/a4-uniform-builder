module ApplicationHelper
  def show_svg(path)
    File.open(Rails.root.join("public/#{path}"), "rb") do |file|
      raw file.read
    end
  end
  def sport
    current_user && Sport.find_by_id(current_user.sport)
  end
  def gender
    Gender.find_by_id(sport.try(:gender_id))
  end
  def category
    Category.find_by_id(current_user.category_id)
  end
end
