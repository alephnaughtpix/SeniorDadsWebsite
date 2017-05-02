class FeaturesController < ApplicationController
  
  @is_root = false;
  
  def index 
    render :default
  end

  def netbest
    @is_root = true
    # Get "NetBest" links from database.
    @links = Link.where( category: Category.where( name: 'netbest' ) )
    # Get date of latest update.
    @updated_date = ApplicationController.helpers.date_formatted(@links.sort_by{ |h| -h.updated_at.to_i }.first.updated_at)
  end
  
end
