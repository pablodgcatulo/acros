module ApplicationHelper
  # 
  # [nav_bar_activo? description]
  # 
  # @return [type] [description]
  def nav_bar_activo?(opciones)
    current_page?(opciones) ? "active" : ""
  end
end
