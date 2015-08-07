module ApplicationHelper
	def yes_no(boolean)
		translate boolean.class
	end

	def fa_icon(icon_class)
		"<i class=\"icon fa fa-#{icon_class}\"></i>".html_safe
	end
end
