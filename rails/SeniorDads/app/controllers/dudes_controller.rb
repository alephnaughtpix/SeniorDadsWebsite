class DudesController < ApplicationController
  
  def default
  end
  
  def faq
  end

  def index
  	@dudes = Members.all.sort_by{ |h| -h.order.to_i }
    render :default
  end

end
