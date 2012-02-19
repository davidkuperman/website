class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def about
    @title = "About"
  end

  def contact
    @title = "Contact"
  end

  def products
    @title = 'Products'
  end

   def editions
    @title = 'Editions'
  end

    def benefits
    @title = 'Benefits'
  end

   def services
    @title = 'Services'
  end

   def support
    @title = 'Support'
  end

   def news
     @title = 'News'
   end

   def news1
     @title = 'News 1'
   end

   def news2
     @title = 'News 2'
   end

   def privacy
     @title = 'Privacy'
   end

end
