class API::InsertUsersController < ApplicationController
skip_before_filter :verify_authenticity_token
    def user_insert
        
        if params[:study_name]
            @study = Study.where(:study_name => params[:study_name]).first_or_initialize
            @study.update_attributes(:study_name => params[:study_name])
          
            if params[:pr_id]
                robo_username = params[:pr_id]
                user = RoboUser.where(:username => robo_username).first_or_initialize
                user.update_attributes(:study_id => @study.id)
            end
            render :json => { :success => "updated study and robo user successfully" }
        else
            render :json => { :errors => "invalid data" }
        end
     
    end
end
