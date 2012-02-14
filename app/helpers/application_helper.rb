module ApplicationHelper

		def latest_news(number)
				NewsItem.latest(number[:count])
		end

		# Creating Logos, Icons, and other Image

		def logo
				image_tag("nla_logo.png", alt: "Neighborhood Learning Alliance Logo")
		end

		def twitter
				image_tag("twitter.png", alt: "Follow us on Twitter!", size: "24x24")
		end

		def facebook
				image_tag("fb_icon.png", alt: "Like us on Facebook!", size: "24x24")
		end

		def google_plus
				image_tag("gplus.png", alt: "+1 us on Google Plus!", size: "24x24")
		end
end
