::User.find(:all).each do |user|
  if user.plugins.where(:name => 'refinery_inquiries').blank?
    user.plugins.create(:name => "refinery_inquiries",
                        :position => (user.plugins.maximum(:position) || -1) +1)
  end
end if defined?(::User)

if defined?(::Page)
  page_position = (::Page.maximum(:position, :conditions => {:parent_id => nil}) || -1)

  contact_us_page = ::Page.create({
    :title => "Contact",
    :link_url => "/contact",
    :menu_match => "^/(inquiries|contact).*$",
    :deletable => false,
    :position => (page_position += 1)
  })
  contact_us_page.parts.create({
    :title => "Body",
    :body => "<p>Get in touch with us. Just use the form below and we'll get back to you as soon as we can.</p>",
    :position => 0
  })
  contact_us_page.parts.create({
    :title => "Side Body",
    :body => "<p>5429 Penn Ave.<br />Pittsburgh, PA<br />Phone: (412) 363-1910<br />Fax: (412) 363-1592</p>",
    :position => 1
  })
  contact_us_page_position = -1

  thank_you_page = contact_us_page.children.create({
    :title => "Thank You",
    :link_url => "/contact/thank_you",
    :menu_match => "^/(inquiries|contact)/thank_you$",
    :show_in_menu => false,
    :deletable => false,
    :position => (contact_us_page_position += 1)
  })
  thank_you_page.parts.create({
    :title => "Body",
    :body => "<p>We've received your inquiry and will get back to you with a response shortly.</p><p><a href='/'>Return to the home page</a></p>",
    :position => 0
  })
end
