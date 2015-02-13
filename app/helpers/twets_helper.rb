module TwetsHelper
	def filter_twet( twet_text )
		twet_text.gsub!(/@(\w+)/) { |handle| User.find_by_username("#{$1}") ? link_to(handle, "/#{$1}") : handle }

		return twet_text.html_safe
	end
end
