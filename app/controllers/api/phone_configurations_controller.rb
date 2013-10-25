class API::PhoneConfigurationsController < ApplicationController

    def user_config
        user = RoboUser.where(:username => params[:user_id]).first
        if user.phone_configuration
            @phone_configuration = user.phone_configuration
            respond_to do |format|
                format.json { render :json => @phone_configuration.json }
            end
        else
            render :json => { :errors => "user configuration not found" }
        end
    end
end
