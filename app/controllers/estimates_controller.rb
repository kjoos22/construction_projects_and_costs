class EstimatesController < ApplicationController
    #new
    get '/estimates/new' do
        erb :'/estimates/new'
    end

    #show
    get '/estimates/:id' do
        @e = Estimate.find_by(id: params[:id])
        if @e
            erb :'/estimates/show'
        else 
            redirect :'/estimates/index'
        end
    end   

    #create
    post '/estimates' do
        binding.pry
        estimate = Estimate.create(params)
        redirect "estimates/#{estimate.id}"
    end

    
end