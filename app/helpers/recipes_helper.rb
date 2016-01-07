module RecipesHelper
  def show_non_blank_field(label, value)
    html = "".html_safe
    html << "<p>".html_safe
    html << "<strong>".html_safe
    html << "#{label}: "
    html << "</strong>".html_safe
    html << "#{value}"
    html << "</p>".html_safe
    html unless value.blank?
  end
end




