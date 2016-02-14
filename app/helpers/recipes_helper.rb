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


  def auto_link(x)
    highlight(x, URI.extract(x), :highlighter => '<a href="'.html_safe + '\1' + '">'.html_safe + '\1' + '</a>'.html_safe)
  end

end




