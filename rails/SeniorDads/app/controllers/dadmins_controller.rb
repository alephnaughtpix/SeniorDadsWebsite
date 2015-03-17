class DadminsController < ApplicationController
  before_filter :authenticate_user!
  
  @is_root = false

  layout "dadmin"

end
