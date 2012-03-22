module ApplicationHelper

		def latest_news(number)
				NewsItem.latest(number[:count])
		end

		# Creating Logos, Icons, and other Image

		def logo
				image_tag("NLA.svg", alt: "Neighborhood Learning Alliance Logo", id: 'logo', height: "142em")
		end

		def twitter
				image_tag("sn_icons/twitter.png", alt: "Follow us on Twitter!", class: 'icon')
		end

		def facebook
				image_tag("sn_icons/fb.png", alt: "Like us on Facebook!", class: 'icon')
		end

		def google_plus
				image_tag("sn_icons/gplus.png", alt: "+1 us on Google Plus!", class: 'icon')
		end

end
