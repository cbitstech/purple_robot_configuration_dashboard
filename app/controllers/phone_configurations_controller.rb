class PhoneConfigurationsController < ApplicationController

   before_filter :authenticate_user!

    def index
        @configs = PhoneConfiguration.all
        @studies = Study.all
    end

    def ajax

        if params[:id]
            @phone_config = PhoneConfiguration.where(:id => params[:id]).first
        
        else
            robo_user = RoboUser.where(:id => params[:user_id]).first
            @phone_config = robo_user.phone_configuration 
        end

       render :json => (@phone_config || {}).to_json

    end

    def create
        @config = PhoneConfiguration.where(:id => params[:phone_configuration][:id]).first_or_initialize
        @config.update_attributes(config_params)

        if params[:phone_configuration][:robo_user_id]
            user = RoboUser.where(:id => params[:phone_configuration][:robo_user_id]).first
            user.phone_configuration = @config
            user.save
        end

        if params[:phone_configuration][:study_id]
            study = Study.where(:id => params[:phone_configuration][:study_id]).first
            study.phone_configuration = @config
            study.save
            study.robo_users.each do |robo_user|
                robo_user.phone_configuration = @config
                robo_user.save
            end
        end
        respond_to do |format|
            format.json { head :ok }
        end
    end

    def destroy
        @config = PhoneConfiguration.where(:id => params[:id]).first
        @config.destroy
        redirect_to :action => 'index'
    end
    
    private

    def config_params
        params.require(:phone_configuration).permit(:config_name, :json, :id)
    end
end
