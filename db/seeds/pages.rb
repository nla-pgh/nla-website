::Page.reset_column_information
# Check whether all columns are applied yet by seo_meta.
unless !defined?(::SeoMeta) || ::SeoMeta.attributes.keys.all? { |k|
  ::Page.translation_class.instance_methods.map(&:to_sym).include?(k)
}
  # Make pages model seo_meta because not all columns are accessible.
  ::Page.translation_class.send :is_seo_meta
end

page_position = -1

home_page = Page.create(:title => "Home",
            :deletable => false,
            :link_url => "/",
            :position => (page_position += 1))
home_page.parts.create( {
							:title => "Body",
							:body => "",
							:position => 0 })

home_page_position = -1
page_not_found_page = home_page.children.create(:title => "Page not found",
            :menu_match => "^/404$",
            :show_in_menu => false,
            :deletable => false,
            :position => (home_page_position += 1))
page_not_found_page.parts.create({
              :title => "Body",
              :body => "<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href='/'>Return to the home page</a></p>",
              :position => 0
            })

take_action = Page.create(title: "Take Action",
													deletable: false,
													position: (page_position += 1))

take_action.parts.create(title: "Body",
												 body: "",
												 position: 0)
