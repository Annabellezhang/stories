class SignupsController < ApplicationController
    def new
    end
    
    def create
        @signups = Signup.new(signup_params)
        if @signups.save
            redirect_to thanks_path
        else
            render 'new'
        end
    end
        
    private
        def signup_params
            params.require(:signup).permit(:firstname, :email)
        end
end
