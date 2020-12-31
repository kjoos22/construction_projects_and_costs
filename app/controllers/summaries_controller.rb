class SummariesController < ApplicationController
    #new
    get '/summaries/new' do
        erb :'/summaries/new'
    end

    #show
    get '/summaries/:id' do
        @s = Summary.find_by(id: params[:id])
        if @s
            erb :'/summaries/show'
        else 
            redirect :'/projects/index'
        end
    end   

    #create
    post '/summaries' do
        summary = current_user.summaries.create(params)
        redirect "summaries/#{summary.id}"
    end

    #delete
    delete '/summaries/:id' do
        summary = Summary.find_by(id: params[:id])
        if summary.user == current_user
            summary.destroy        
            redirect :'/projects'
        else
            redirect '/projects'
        end
    end
end