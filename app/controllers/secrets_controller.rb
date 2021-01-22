class SecretsController < ApplicationController

    def show
        if not_logged_in
            redirect_to login_path
        end
    end

    def not_logged_in
        session[:name].blank?
    end
end
