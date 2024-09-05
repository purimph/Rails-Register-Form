class DataformsController < ApplicationController

    def registerForm
    end

    def create
        @registration = Registration.new(param)

        if @registration.save
            redirect_to root_path
        else
            render :registerForm
        end

    end

    private
    def param
        params.require(:registration).permit(:first_name, :last_name, :birthday, :gender, :email, :phone_number, :subject)
    end
end
