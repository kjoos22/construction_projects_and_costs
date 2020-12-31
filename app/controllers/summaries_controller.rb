class SummariesController < ApplicationController
    #new
    get '/summaries/new' do
        erb :'/summaries/new'
    end

    #show
    get '/summaries/:id' do
        @s = Sumarry.find_by(id: params[:id])
        if @s
            erb :'/summaries/show'
        else 
            redirect :'/projects/index'
        end
    end   

    #create
    post '/summaries' do
        sumarry = Summary.create(params)
        redirect "summaries/#{summary.id}"
    end

end