require 'json'

class API::PhoneConfigurationsController < ApplicationController

    def user_config
        user = RoboUser.where(:username => params[:user_id]).first
        if user.phone_configuration
            @phone_configuration = user.phone_configuration

            render :json => PurpleRobot.config_from_hash(JSON.parse(@phone_configuration.json)) 
        else
            render :json => { :errors => "user configuration not found" }
        end
    end
end
