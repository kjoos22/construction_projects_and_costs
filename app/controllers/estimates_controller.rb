class EstimatesController < ApplicationController
    #new
    get '/estimates/new' do
        erb :'/estimates/new'
    end 

    #create
    post '/estimates' do
        estimate = current_user.estimates.build(params)
        if estimate.save
            redirect "estimates/#{estimate.id}"
        else
            @errors = estimate.errors.full_mesages.join(" - ")
            erb :'/estimates/new'
        end
    end

    #delete
    delete '/estimates/:id' do
        estimate = Estimate.find_by(id: params[:id])
        if estimate.user == current_user
            estimate.destroy
            redirect :'/projects'
        else
            redirect '/projects'
        end
    end

    #edit
    get '/estimates/:id/edit' do
        @e = Estimate.find_by(id: params[:id])
        if @e.user == current_user
            erb :'/estimates/edit'
        else
            redirect "/projects"
        end
    end

    patch '/estimates/:id' do
        estimate = Estimate.find_by(id: params[:id])
        estimate.update(params[:u])
        estimate.save
     
        redirect "/estimates/#{estimate.id}"
    end

     #show
     get '/estimates/:id' do
        @e = Estimate.find_by(id: params[:id])
        if @e
            erb :'/estimates/show'
        else 
            redirect :'/projects/index'
        end
    end  

    
end