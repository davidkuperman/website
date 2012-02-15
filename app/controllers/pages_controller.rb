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

end
