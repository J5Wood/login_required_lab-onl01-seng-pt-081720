class SecretsController < ApplicationController

    def show
        not_logged_in?
    end

    def secret
        not_logged_in?
    end

    private

    def not_logged_in?
        if session[:name].blank?
            redirect_to login_path
        end
    end
end
