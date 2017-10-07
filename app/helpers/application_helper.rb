module ApplicationHelper

  def root_active
    "active" if current_page?(root_path)
  end

  def page_active(name)
    "active" if controller_name == name and !current_page?(root_path)
  end

  def auth
    if current_user
      link_to "Sign Out", destroy_user_session_path, class: "nav-link", method: :delete
    else
      link_to "Sign In", new_user_session_path, class: "nav-link"
    end
  end

  def post_categories post
    "Categories: #{post.categories.map{|category| link_to category.name, category}.join(',')}".html_safe if post.categories.any?
  end
end
