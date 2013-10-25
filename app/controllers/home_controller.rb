class HomeController < ApplicationController
   before_filter :authenticate_user!
 
    def index
        @users = RoboUser.all
        @configurations = PhoneConfiguration.all
        @studies = Study.all
    end
        
end
