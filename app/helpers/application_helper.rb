module ApplicationHelper

  def root_active
    "active" if current_page?(root_path)
  end

  def page_active(name)
    "active" if controller_name == name and !current_page?(root_path)
  end
end
