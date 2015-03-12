class Features::PresstrailsController < ApplicationController
  
      layout "presstrail"
      
      @is_root = false
      
      def index
        render :default
      end
      
      def default
        @is_root = true
      end
  
end
