class TemplateController < ApplicationController
    
    def get_template
        @template = Template.first
        render json: @template.json
    end
end
