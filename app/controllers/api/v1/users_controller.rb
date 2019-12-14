module Api
    module V1
        class UsersController < ApplicationController
            skip_before_action :verify_authenticity_token
            def match
                @user = User.where(email: params[:email].downcase,password:params[:password])
                
                if @user.count == 1 
                    User.update(status:1)
                    render json: @user
                else
                    render json: @user
                end
            end


            def toggle
                params2=params[:email].first 
            
                @user = User.where(email: params2[:email]).first
                
                if @user.status == "login"
                    @user.update(status:2)
                elsif @user.status == "resume"
                    @user.update(status:2)
                else
                    @user.update(status:3)
                end

            end

            def logout

                if params[:email].present?
                    params2=params[:email].first 
                    @user = User.where(email: params2[:email]).first
                    @user.update(status:0)
                end

             end

            def index
                @user = User.all
                render json: @user
            end
            
        end
    end
end