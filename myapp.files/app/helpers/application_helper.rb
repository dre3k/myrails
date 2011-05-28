module ApplicationHelper
  def ie_html(attrs={}, &block)
    attrs.symbolize_keys!
    haml_concat("<!--[if lt IE 7 ]> #{tag(:html, add_class('ie6', attrs), true)} <![endif]-->".html_safe)
    haml_concat("<!--[if IE 7 ]>    #{tag(:html, add_class('ie7', attrs), true)} <![endif]-->".html_safe)
    haml_concat("<!--[if IE 8 ]>    #{tag(:html, add_class('ie8', attrs), true)} <![endif]-->".html_safe)
    haml_concat("<!--[if IE 9 ]>    #{tag(:html, add_class('ie9', attrs), true)} <![endif]-->".html_safe)
    haml_concat("<!--[if (gte IE 9)|!(IE)]><!-->".html_safe)
    haml_tag :html, attrs do
      haml_concat("<!--<![endif]-->".html_safe)
      block.call
    end
  end

  def compiled_javascript_include_tag(*sources)
    javascript_include_tag(*(sources.map{|js| "compiled/#{js}"}))
  end

private
  def add_class(name, attrs)
    classes = attrs[:class] || ''
    classes.strip!
    classes = ' ' + classes if !classes.blank?
    classes = name + classes
    attrs.merge(:class => classes)
  end
end
