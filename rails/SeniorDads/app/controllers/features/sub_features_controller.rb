class Features::SubFeaturesController < ApplicationController

      @is_root = false
      
      def index
        render :default
      end
      
      def default
        @is_root = true
      end

end
