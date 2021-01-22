class SecretsController < ApplicationController
    before_action :user_logged_in?

    def show
    end

    def secret
    end

    private

    def user_logged_in?
        if session[:name].blank?
            redirect_to login_path
        end
    end
end
