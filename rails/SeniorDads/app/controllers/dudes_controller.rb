class DudesController < ApplicationController
  
  def default
  end
  
  def faq
  end

  def index
  	@dudes = Members.all.order(:order)
    render :default
  end

end
