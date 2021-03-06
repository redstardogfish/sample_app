module ApplicationHelper
  # Return an title on a per-page basis
  def title
    base_title = "Ruby on Rails Sample App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end  
  end
  
  def logo
    image_tag("logo.png", :alt => "Sample_app",:class => "value", 
  				  :class => "round"   )
  end
  
end
