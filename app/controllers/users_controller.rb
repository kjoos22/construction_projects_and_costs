class UsersController < ApplicationController
    get '/signup' do
        erb :'users/new'
    end

    post '/signup' do
        user = User.new(params)
        if user.save
            session[:user_id] = user.id
            redirect '/projects'
        else
            @errors = user.errors.full_messages.join(" - ")
            erb :'/users/new'
        end
    end

    get '/login' do
        erb :'/users/login'
    end

    post '/login' do
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect '/projects'
        else
            @errors = "Invalid Credentials"
            erb :'/users/login'
        end
    end

    get '/logout' do
        session.clear
        redirect to '/login'
    end   

end