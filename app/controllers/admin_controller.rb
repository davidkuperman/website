class AdminController < ApplicationController

  def index
    @total_request = Request.count
  end

end
