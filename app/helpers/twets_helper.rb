module TwetsHelper
	def filter_twet( twet_text )
		return twet_text.gsub(/@(\w+)/) {|username| link_to(username, "/#{$1}").html_safe}.html_safe
	end
end
